Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D13D321D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTo4bjFGeDTOp5d18AG3KKGwlzlKWWu1N3LB1FYTAs8=; b=Di9oWtKEvMp3kl
	/l+3HaNt9scy+TzI9iP0g2JWGH9yw03wuRDQhOfgzw62gIMJOTBJA4sfHiO/4SDkWH+SXemIiQA2x
	iZJnQv6P0XuHR67xPHdQy9zXlidkA9SnVAL68V6JOdawpcsiQ5lc8psmtsaC3zG2Ox0aKb2vOm36z
	CdFm/iqLjiaxtB9B8/58psM8lIkJpVA5lSwxq3f12dyaNf9sUM2vxM0rQJ6s57hZ2NkpK8f6JIxFr
	6N0AZhb0NA2CT9AgHSr4yaSA1HJBOlfaypwSGhB3lODqzq4uyf8F90JxZLlEvpNto7QiIFUjSodvT
	lP1un0A4OzvXsTqiPyrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf69-00023e-Mc; Thu, 10 Oct 2019 20:31:45 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf5z-00021v-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:31:38 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MS1G7-1ig9Fo3Vvv-00TYCf; Thu, 10 Oct 2019 22:31:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 03/36] usb: gadget: s3c: use platform resources
Date: Thu, 10 Oct 2019 22:29:47 +0200
Message-Id: <20191010203043.1241612-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:iwNwd1cVxFxCrms7c8C5XzuQmcy9u/dn0xzTwy3RMzXW1HxHseW
 IktW/Os21uQmVtkwkRfdK8qY77KGxRXzPq9asnOccmpMKGioJurl5rwTvNROCMQ0hv7uHM1
 5n3b0f1Gq1uQp5GkmFlZaHhavVkQl4zYOZ06/7iFrVU7yhx4YAWQB741n54+opUgSOKqapx
 Uqd7p7XE5W4DODvUhpdkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/KCtwZvm948=:MjTG6wQH6Bxkes8aciFuXb
 wupIQgdWQkr5jGLLinWtBtmLJ2v2beVp77GUTiiOxUYG6E8z5XEN47Fg5bXASQZeY78NP+X28
 cuF+YJlcr9ywwhZamJFnQv8guj15mlGyx1EHNB+ZC5Dj2ob/Lmh+lo4+vK61tQsonzDlO0DvC
 qs7fRaIZeBcRWlPX75oaPOBrcGGoQN8+CTB7LemcVNUxkBUFKLtSB+OU+d1hbjT1vRgsXztYw
 GN7CJbrxCk4nLJ9+XwC4en0QBzhQ2Dl/wlyO1vRAVjPE8W/OS4SJSXNW8Nym8gE+PNpJwveDb
 qhbuXxK65AEu9ev0p6t4voIPYRdP2yo8g/comURhSF+9CpGPrxsoPb0TlD2JvRt6IgPxxTV83
 3SlyGem/ISFtWbADtVkvTPwGxi6UPb33hVZF4A0XJfGRDrTOQ/+DOm1AfByNGebaPk++ZU4Ea
 LimmQYfyqNq4cxGUFua7x3Wx6PyPUhyyAJgJsJYu64uyDP3Hl/eLjV5kQ6nu/Wb6A+5oUkzXA
 Jl8FyQRkuwZP6zKUZC6moi3BtS6nOUpVieam8Xjao9HN5Fn7/t/Gs0o6aUoKhUGuGKBR19A9q
 n8kEG8c5zJJ36ptDqdr7XBFzFsvhSipybIw44e+YZZmojMFTusmcexy17QfjG4fTYnpR9ipCG
 taBNgRpoSESiUXenE+9ZFSjQ0sV8YLIR4wOs9Ml/wWbVND+oPHTEEzInk/73Av+ppsgtPa9fw
 2U1M7pDIYSarTkneuXbiBHGIDID1b+Vh+9srUMkHEz3IRWIdD2QoiHZkuwi882ECwm4/w5Ny/
 a2RxIEEXJ+5AVS9XPQh5C3rdadtoJUIwQdrPPcQKEhJB8OoJzkEwYN8XmML3GnFjITtOZzc0Y
 2akHoI5CkL2+FlbMBIpQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133135_939142_4E55AADD 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Felipe Balbi <balbi@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJlc291cmNlcyBhcmUgY29ycmVjdGx5IGluaXRpYWxpemVkLCBzbyBqdXN0IHVzZSB0aGVt
Cmluc3RlYWQgb2YgcmVseWluZyBvbiBoYXJkY29kZWQgZGF0YSBmcm9tIHBsYXRmb3JtIGhlYWRl
cnMuCgpTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgotLS0KIGRy
aXZlcnMvdXNiL2dhZGdldC91ZGMvczNjMjQxMF91ZGMuYyAgICAgICAgICB8IDMxICsrKysrKyst
LS0tLS0tLS0tLS0KIGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvczNjMjQxMF91ZGMuaCAgICAgICAg
ICB8ICAxICsKIC4uLi91c2IvZ2FkZ2V0L3VkYy9zM2MyNDEwX3VkY19yZWdzLmggICAgICAgICB8
ICAwCiAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQog
cmVuYW1lIGFyY2gvYXJtL3BsYXQtc2Ftc3VuZy9pbmNsdWRlL3BsYXQvcmVncy11ZGMuaCA9PiBk
cml2ZXJzL3VzYi9nYWRnZXQvdWRjL3MzYzI0MTBfdWRjX3JlZ3MuaCAoMTAwJSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL3MzYzI0MTBfdWRjLmMgYi9kcml2ZXJzL3VzYi9n
YWRnZXQvdWRjL3MzYzI0MTBfdWRjLmMKaW5kZXggZjgyMjA4ZmJjMjQ5Li5lNDExZDI3Yjc5ZmMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvczNjMjQxMF91ZGMuYworKysgYi9k
cml2ZXJzL3VzYi9nYWRnZXQvdWRjL3MzYzI0MTBfdWRjLmMKQEAgLTM2LDE1ICszNiwxMSBAQAog
I2luY2x1ZGUgPGFzbS9ieXRlb3JkZXIuaD4KICNpbmNsdWRlIDxhc20vaXJxLmg+CiAjaW5jbHVk
ZSA8YXNtL3VuYWxpZ25lZC5oPgotI2luY2x1ZGUgPG1hY2gvaXJxcy5oPgogCi0jaW5jbHVkZSA8
bWFjaC9oYXJkd2FyZS5oPgotCi0jaW5jbHVkZSA8cGxhdC9yZWdzLXVkYy5oPgogI2luY2x1ZGUg
PGxpbnV4L3BsYXRmb3JtX2RhdGEvdXNiLXMzYzI0MTBfdWRjLmg+CiAKLQogI2luY2x1ZGUgInMz
YzI0MTBfdWRjLmgiCisjaW5jbHVkZSAiczNjMjQxMF91ZGNfcmVncy5oIgogCiAjZGVmaW5lIERS
SVZFUl9ERVNDCSJTM0MyNDEwIFVTQiBEZXZpY2UgQ29udHJvbGxlciBHYWRnZXQiCiAjZGVmaW5l
IERSSVZFUl9BVVRIT1IJIkhlcmJlcnQgUMO2dHpsIDxoZXJiZXJ0QDEzdGhmbG9vci5hdD4sICIg
XApAQCAtNTcsNiArNTMsNyBAQCBzdGF0aWMgc3RydWN0IHMzYzI0MTBfdWRjCSp0aGVfY29udHJv
bGxlcjsKIHN0YXRpYyBzdHJ1Y3QgY2xrCQkqdWRjX2Nsb2NrOwogc3RhdGljIHN0cnVjdCBjbGsJ
CSp1c2JfYnVzX2Nsb2NrOwogc3RhdGljIHZvaWQgX19pb21lbQkJKmJhc2VfYWRkcjsKK3N0YXRp
YyBpbnQJCQlpcnFfdXNiZDsKIHN0YXRpYyB1NjQJCQlyc3JjX3N0YXJ0Owogc3RhdGljIHU2NAkJ
CXJzcmNfbGVuOwogc3RhdGljIHN0cnVjdCBkZW50cnkJCSpzM2MyNDEwX3VkY19kZWJ1Z2ZzX3Jv
b3Q7CkBAIC04MzksOCArODM2LDYgQEAgc3RhdGljIHZvaWQgczNjMjQxMF91ZGNfaGFuZGxlX2Vw
KHN0cnVjdCBzM2MyNDEwX2VwICplcCkKIAl9CiB9CiAKLSNpbmNsdWRlIDxtYWNoL3JlZ3MtaXJx
Lmg+Ci0KIC8qCiAgKglzM2MyNDEwX3VkY19pcnEgLSBpbnRlcnJ1cHQgaGFuZGxlcgogICovCkBA
IC05ODEsNyArOTc2LDcgQEAgc3RhdGljIGlycXJldHVybl90IHMzYzI0MTBfdWRjX2lycShpbnQg
ZHVtbXksIHZvaWQgKl9kZXYpCiAJCX0KIAl9CiAKLQlkcHJpbnRrKERFQlVHX1ZFUkJPU0UsICJp
cnE6ICVkIHMzYzI0MTBfdWRjX2RvbmUuXG4iLCBJUlFfVVNCRCk7CisJZHByaW50ayhERUJVR19W
RVJCT1NFLCAiaXJxOiAlZCBzM2MyNDEwX3VkY19kb25lLlxuIiwgaXJxX3VzYmQpOwogCiAJLyog
UmVzdG9yZSBvbGQgaW5kZXggKi8KIAl1ZGNfd3JpdGUoaWR4LCBTM0MyNDEwX1VEQ19JTkRFWF9S
RUcpOwpAQCAtMTc4NCwxMyArMTc3OSw3IEBAIHN0YXRpYyBpbnQgczNjMjQxMF91ZGNfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlzcGluX2xvY2tfaW5pdCgmdWRjLT5sb2Nr
KTsKIAl1ZGNfaW5mbyA9IGRldl9nZXRfcGxhdGRhdGEoJnBkZXYtPmRldik7CiAKLQlyc3JjX3N0
YXJ0ID0gUzNDMjQxMF9QQV9VU0JERVY7Ci0JcnNyY19sZW4gICA9IFMzQzI0WFhfU1pfVVNCREVW
OwotCi0JaWYgKCFyZXF1ZXN0X21lbV9yZWdpb24ocnNyY19zdGFydCwgcnNyY19sZW4sIGdhZGdl
dF9uYW1lKSkKLQkJcmV0dXJuIC1FQlVTWTsKLQotCWJhc2VfYWRkciA9IGlvcmVtYXAocnNyY19z
dGFydCwgcnNyY19sZW4pOworCWJhc2VfYWRkciA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNv
dXJjZShwZGV2LCAwKTsKIAlpZiAoIWJhc2VfYWRkcikgewogCQlyZXR2YWwgPSAtRU5PTUVNOwog
CQlnb3RvIGVycl9tZW07CkBAIC0xODAyLDE3ICsxNzkxLDE5IEBAIHN0YXRpYyBpbnQgczNjMjQx
MF91ZGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlzM2MyNDEwX3VkY19k
aXNhYmxlKHVkYyk7CiAJczNjMjQxMF91ZGNfcmVpbml0KHVkYyk7CiAKKwlpcnFfdXNiZCA9IHBs
YXRmb3JtX2dldF9pcnEocGRldiwgMCk7CisKIAkvKiBpcnEgc2V0dXAgYWZ0ZXIgb2xkIGhhcmR3
YXJlIHN0YXRlIGlzIGNsZWFuZWQgdXAgKi8KLQlyZXR2YWwgPSByZXF1ZXN0X2lycShJUlFfVVNC
RCwgczNjMjQxMF91ZGNfaXJxLAorCXJldHZhbCA9IHJlcXVlc3RfaXJxKGlycV91c2JkLCBzM2My
NDEwX3VkY19pcnEsCiAJCQkgICAgIDAsIGdhZGdldF9uYW1lLCB1ZGMpOwogCiAJaWYgKHJldHZh
bCAhPSAwKSB7Ci0JCWRldl9lcnIoZGV2LCAiY2Fubm90IGdldCBpcnEgJWksIGVyciAlZFxuIiwg
SVJRX1VTQkQsIHJldHZhbCk7CisJCWRldl9lcnIoZGV2LCAiY2Fubm90IGdldCBpcnEgJWksIGVy
ciAlZFxuIiwgaXJxX3VzYmQsIHJldHZhbCk7CiAJCXJldHZhbCA9IC1FQlVTWTsKIAkJZ290byBl
cnJfbWFwOwogCX0KIAotCWRldl9kYmcoZGV2LCAiZ290IGlycSAlaVxuIiwgSVJRX1VTQkQpOwor
CWRldl9kYmcoZGV2LCAiZ290IGlycSAlaVxuIiwgaXJxX3VzYmQpOwogCiAJaWYgKHVkY19pbmZv
ICYmIHVkY19pbmZvLT52YnVzX3BpbiA+IDApIHsKIAkJcmV0dmFsID0gZ3Bpb19yZXF1ZXN0KHVk
Y19pbmZvLT52YnVzX3BpbiwgInVkYyB2YnVzIik7CkBAIC0xODc5LDcgKzE4NzAsNyBAQCBzdGF0
aWMgaW50IHMzYzI0MTBfdWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
aWYgKHVkY19pbmZvICYmIHVkY19pbmZvLT52YnVzX3BpbiA+IDApCiAJCWdwaW9fZnJlZSh1ZGNf
aW5mby0+dmJ1c19waW4pOwogZXJyX2ludDoKLQlmcmVlX2lycShJUlFfVVNCRCwgdWRjKTsKKwlm
cmVlX2lycShpcnFfdXNiZCwgdWRjKTsKIGVycl9tYXA6CiAJaW91bm1hcChiYXNlX2FkZHIpOwog
ZXJyX21lbToKQEAgLTE5MTMsNyArMTkwNCw3IEBAIHN0YXRpYyBpbnQgczNjMjQxMF91ZGNfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWZyZWVfaXJxKGlycSwgdWRjKTsK
IAl9CiAKLQlmcmVlX2lycShJUlFfVVNCRCwgdWRjKTsKKwlmcmVlX2lycShpcnFfdXNiZCwgdWRj
KTsKIAogCWlvdW5tYXAoYmFzZV9hZGRyKTsKIAlyZWxlYXNlX21lbV9yZWdpb24ocnNyY19zdGFy
dCwgcnNyY19sZW4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9zM2MyNDEw
X3VkYy5oIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9zM2MyNDEwX3VkYy5oCmluZGV4IGJkY2Fh
OGRkMzAwZi4uNjhiZGYzZTVhYWMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9nYWRnZXQvdWRj
L3MzYzI0MTBfdWRjLmgKKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9zM2MyNDEwX3VkYy5o
CkBAIC05MCw2ICs5MCw3IEBAIHN0cnVjdCBzM2MyNDEwX3VkYyB7CiAJdW5zaWduZWQJCQlyZXFf
cGVuZGluZyA6IDE7CiAJdTgJCQkJdmJ1czsKIAlzdHJ1Y3QgZGVudHJ5CQkJKnJlZ3NfaW5mbzsK
KwlpbnQJCQkJaXJxOwogfTsKICNkZWZpbmUgdG9fczNjMjQxMChnKQkoY29udGFpbmVyX29mKChn
KSwgc3RydWN0IHMzYzI0MTBfdWRjLCBnYWRnZXQpKQogCmRpZmYgLS1naXQgYS9hcmNoL2FybS9w
bGF0LXNhbXN1bmcvaW5jbHVkZS9wbGF0L3JlZ3MtdWRjLmggYi9kcml2ZXJzL3VzYi9nYWRnZXQv
dWRjL3MzYzI0MTBfdWRjX3JlZ3MuaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20g
YXJjaC9hcm0vcGxhdC1zYW1zdW5nL2luY2x1ZGUvcGxhdC9yZWdzLXVkYy5oCnJlbmFtZSB0byBk
cml2ZXJzL3VzYi9nYWRnZXQvdWRjL3MzYzI0MTBfdWRjX3JlZ3MuaAotLSAKMi4yMC4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
