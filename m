Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B9A82DB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/JhyiEjWrRDNA1Em1blvGRJS0vmyBp/LuorDKr2si1o=; b=n+/Ry76tMpgsXy
	HkprIrFpwHIu2LDLlZHPCLceOZoGfm4Zb+eye1RzGRE7j6CbP5zbuvMTm2Qxl2N0Rdv7g7Fs8OF6v
	8h5klj65OmH6S8hJ2zXk4Hp+SqPdkBQnBm6Ww6UsudoNIKISWhQ3T3KCu6uvkQjXynhoVfFbD/rxt
	481D9Npnce76LSN5KVdo91QIQZKDbt5jPAc/qJChPi83/onDYjZ7LH0nDWgmWUwgaREvBqHsqscMd
	P2TuXJS/TJ1+jVoDP14QKFAHzALudw1Za63w8ItLMRQbvW30x2FTg3DDfyeiJ0HKOIzkvExDfDijn
	bVx5pMLcXtHSEonBG+aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuqR-0002uu-C6; Tue, 06 Aug 2019 08:29:23 +0000
Received: from gateway31.websitewelcome.com ([192.185.144.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuqD-0002uE-Ea
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:29:10 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 564DDBBECC
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  6 Aug 2019 03:29:07 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id uuqBhJ476dnCeuuqBhkyc6; Tue, 06 Aug 2019 03:29:07 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WVAi0vZcLPXALGm+zh7ti9JDHwAnJCM0op5bLb/Mk3w=; b=VSLzJXXT7nHuLGrQFBFMGdZgZ3
 xcmZmZegT8ArbZCoOmm8NDGWYi27CDkR2icGD+btZlUoFGtTwFvUX1YTfnPjHkj7QDlbTRN6LQzIK
 wxmb4DRV0M2rXmLDSpAbkTsL5wCioyrbqeJrBkF0HYNeyxZbqc8wet05waMxiHzkz7XcCKnoTDeuQ
 19rAesSQ7qHGIOc9ivqKc5YJFzJ1JUEmy9GTEVxVwXPRR3K5Il/vLm24Nhdz82ruP3RrvgmxxkVqG
 VshRsgW1jXGJNBbGaPPOruhIIKATwSlxrh3vcXio44JisZmK5xJwLtVqoOMNltXXCFViF6HHcCpoC
 txBRGWvw==;
Received: from [187.192.11.120] (port=44456 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1huuq9-000v9N-Fr; Tue, 06 Aug 2019 03:29:05 -0500
Date: Tue, 6 Aug 2019 03:29:02 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Russell King <linux@armlinux.org.uk>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [PATCH] scsi: fas216: Mark expected switch fall-throughs
Message-ID: <20190806082902.GA11122@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1huuq9-000v9N-Fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:44456
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_012909_580066_AFD856D6 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.144.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gu
CgpGaXggdGhlIGZvbGxvd2luZyB3YXJuaW5ncyAoQnVpbGRpbmc6IHJwY19kZWZjb25maWcgYXJt
KToKCmRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmM6IEluIGZ1bmN0aW9uIOKAmGZhczIxNl9kaXNj
b25uZWN0X2ludHLigJk6CmRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmM6OTEzOjY6IHdhcm5pbmc6
IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9
XQogICBpZiAoZmFzMjE2X2dldF9sYXN0X21zZyhpbmZvLCBpbmZvLT5zY3NpLm1zZ2luX2ZpZm8p
ID09IEFCT1JUKSB7CiAgICAgIF4KZHJpdmVycy9zY3NpL2FybS9mYXMyMTYuYzo5MTk6Mjogbm90
ZTogaGVyZQogIGRlZmF1bHQ6ICAgIC8qIGh1aD8gICAgICovCiAgXn5+fn5+fgpkcml2ZXJzL3Nj
c2kvYXJtL2ZhczIxNi5jOiBJbiBmdW5jdGlvbiDigJhmYXMyMTZfa2lja+KAmToKZHJpdmVycy9z
Y3NpL2FybS9mYXMyMTYuYzoxOTU5OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxs
IHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBmYXMyMTZfYWxsb2NhdGVfdGFn
KGluZm8sIFNDcG50KTsKICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KZHJpdmVy
cy9zY3NpL2FybS9mYXMyMTYuYzoxOTYwOjI6IG5vdGU6IGhlcmUKICBjYXNlIFRZUEVfT1RIRVI6
CiAgXn5+fgpkcml2ZXJzL3Njc2kvYXJtL2ZhczIxNi5jOiBJbiBmdW5jdGlvbiDigJhmYXMyMTZf
YnVzc2VydmljZV9pbnRy4oCZOgpkcml2ZXJzL3Njc2kvYXJtL2ZhczIxNi5jOjE0MTM6Mzogd2Fy
bmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhy
b3VnaD1dCiAgIGZhczIxNl9zdG9wdHJhbnNmZXIoaW5mbyk7CiAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn4KZHJpdmVycy9zY3NpL2FybS9mYXMyMTYuYzoxNDE0OjI6IG5vdGU6IGhlcmUKICBj
YXNlIFNUQVRFKFNUQVRfU1RBVFVTLCBQSEFTRV9TRUxTVEVQUyk6LyogU2VsIHcvIHN0ZXBzIC0+
IFN0YXR1cyAgICAgICAqLwogIF5+fn4KZHJpdmVycy9zY3NpL2FybS9mYXMyMTYuYzoxNDI0OjM6
IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFs
bHRocm91Z2g9XQogICBmYXMyMTZfc3RvcHRyYW5zZmVyKGluZm8pOwogICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+CmRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmM6MTQyNToyOiBub3RlOiBoZXJl
CiAgY2FzZSBTVEFURShTVEFUX01FU0dJTiwgUEhBU0VfQ09NTUFORCk6IC8qIENvbW1hbmQgLT4g
TWVzc2FnZSBJbiAqLwogIF5+fn4KZHJpdmVycy9zY3NpL2FybS9mYXMyMTYuYzogSW4gZnVuY3Rp
b24g4oCYZmFzMjE2X2Z1bmNkb25lX2ludHLigJk6CmRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmM6
MTU3Mzo2OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxp
Y2l0LWZhbGx0aHJvdWdoPV0KICAgaWYgKChzdGF0ICYgU1RBVF9CVVNNQVNLKSA9PSBTVEFUX01F
U0dJTikgewogICAgICBeCmRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmM6MTU3OToyOiBub3RlOiBo
ZXJlCiAgZGVmYXVsdDoKICBefn5+fn5+CmRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmM6IEluIGZ1
bmN0aW9uIOKAmGZhczIxNl9oYW5kbGVzeW5j4oCZOgpkcml2ZXJzL3Njc2kvYXJtL2ZhczIxNi5j
OjYwNToyMDogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBs
aWNpdC1mYWxsdGhyb3VnaD1dCiAgIGluZm8tPnNjc2kucGhhc2UgPSBQSEFTRV9NU0dPVVRfRVhQ
RUNUOwogICB+fn5+fn5+fn5+fn5+fn5+fl5+fn5+fn5+fn5+fn5+fn5+fn5+fgpkcml2ZXJzL3Nj
c2kvYXJtL2ZhczIxNi5jOjYwNzoyOiBub3RlOiBoZXJlCiAgY2FzZSBhc3luYzoKICBefn5+CgpT
aWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29t
PgotLS0KIGRyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zY3NpL2FybS9mYXMy
MTYuYyBiL2RyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmMKaW5kZXggYWVhNGZkNzNjODYyLi42YzY4
YzIzMDM2MzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc2NzaS9hcm0vZmFzMjE2LmMKKysrIGIvZHJp
dmVycy9zY3NpL2FybS9mYXMyMTYuYwpAQCAtNjAzLDYgKzYwMyw3IEBAIHN0YXRpYyB2b2lkIGZh
czIxNl9oYW5kbGVzeW5jKEZBUzIxNl9JbmZvICppbmZvLCBjaGFyICptc2cpCiAJCW1zZ3F1ZXVl
X2ZsdXNoKCZpbmZvLT5zY3NpLm1zZ3MpOwogCQltc2dxdWV1ZV9hZGRtc2coJmluZm8tPnNjc2ku
bXNncywgMSwgTUVTU0FHRV9SRUpFQ1QpOwogCQlpbmZvLT5zY3NpLnBoYXNlID0gUEhBU0VfTVNH
T1VUX0VYUEVDVDsKKwkJLyogZmFsbCB0aHJvdWdoICovCiAKIAljYXNlIGFzeW5jOgogCQlkZXYt
PnBlcmlvZCA9IGluZm8tPmlmY2ZnLmFzeW5jcGVyaW9kIC8gNDsKQEAgLTkxNSw2ICs5MTYsNyBA
QCBzdGF0aWMgdm9pZCBmYXMyMTZfZGlzY29ubmVjdF9pbnRyKEZBUzIxNl9JbmZvICppbmZvKQog
CQkJZmFzMjE2X2RvbmUoaW5mbywgRElEX0FCT1JUKTsKIAkJCWJyZWFrOwogCQl9CisJCS8qIGVs
c2UsIGZhbGwgdGhyb3VnaCAqLwogCiAJZGVmYXVsdDoJCQkJLyogaHVoPwkJCQkJKi8KIAkJcHJp
bnRrKEtFUk5fRVJSICJzY3NpJWQuJWM6IHVuZXhwZWN0ZWQgZGlzY29ubmVjdCBpbiBwaGFzZSAl
c1xuIiwKQEAgLTE0MTEsNiArMTQxMyw4IEBAIHN0YXRpYyB2b2lkIGZhczIxNl9idXNzZXJ2aWNl
X2ludHIoRkFTMjE2X0luZm8gKmluZm8sIHVuc2lnbmVkIGludCBzdGF0LCB1bnNpZ25lCiAJY2Fz
ZSBTVEFURShTVEFUX1NUQVRVUywgUEhBU0VfREFUQU9VVCk6IC8qIERhdGEgT3V0ICAgICAtPiBT
dGF0dXMgICAgICAgKi8KIAljYXNlIFNUQVRFKFNUQVRfU1RBVFVTLCBQSEFTRV9EQVRBSU4pOiAg
LyogRGF0YSBJbiAgICAgIC0+IFN0YXR1cyAgICAgICAqLwogCQlmYXMyMTZfc3RvcHRyYW5zZmVy
KGluZm8pOworCQkvKiBmYWxsIHRocm91Z2ggKi8KKwogCWNhc2UgU1RBVEUoU1RBVF9TVEFUVVMs
IFBIQVNFX1NFTFNURVBTKTovKiBTZWwgdy8gc3RlcHMgLT4gU3RhdHVzICAgICAgICovCiAJY2Fz
ZSBTVEFURShTVEFUX1NUQVRVUywgUEhBU0VfTVNHT1VUKTogIC8qIE1lc3NhZ2UgT3V0ICAtPiBT
dGF0dXMgICAgICAgKi8KIAljYXNlIFNUQVRFKFNUQVRfU1RBVFVTLCBQSEFTRV9DT01NQU5EKTog
LyogQ29tbWFuZCAgICAgIC0+IFN0YXR1cyAgICAgICAqLwpAQCAtMTQyMiw2ICsxNDI2LDggQEAg
c3RhdGljIHZvaWQgZmFzMjE2X2J1c3NlcnZpY2VfaW50cihGQVMyMTZfSW5mbyAqaW5mbywgdW5z
aWduZWQgaW50IHN0YXQsIHVuc2lnbmUKIAljYXNlIFNUQVRFKFNUQVRfTUVTR0lOLCBQSEFTRV9E
QVRBT1VUKTogLyogRGF0YSBPdXQgICAgIC0+IE1lc3NhZ2UgSW4gICAqLwogCWNhc2UgU1RBVEUo
U1RBVF9NRVNHSU4sIFBIQVNFX0RBVEFJTik6ICAvKiBEYXRhIEluICAgICAgLT4gTWVzc2FnZSBJ
biAgICovCiAJCWZhczIxNl9zdG9wdHJhbnNmZXIoaW5mbyk7CisJCS8qIGZhbGwgdGhyb3VnaCAq
LworCiAJY2FzZSBTVEFURShTVEFUX01FU0dJTiwgUEhBU0VfQ09NTUFORCk6CS8qIENvbW1hbmQJ
LT4gTWVzc2FnZSBJbgkqLwogCWNhc2UgU1RBVEUoU1RBVF9NRVNHSU4sIFBIQVNFX1NFTFNURVBT
KTovKiBTZWwgdy8gc3RlcHMgLT4gTWVzc2FnZSBJbiAgICovCiAJY2FzZSBTVEFURShTVEFUX01F
U0dJTiwgUEhBU0VfTVNHT1VUKTogIC8qIE1lc3NhZ2UgT3V0ICAtPiBNZXNzYWdlIEluICAgKi8K
QEAgLTE1NzUsNiArMTU4MSw3IEBAIHN0YXRpYyB2b2lkIGZhczIxNl9mdW5jZG9uZV9pbnRyKEZB
UzIxNl9JbmZvICppbmZvLCB1bnNpZ25lZCBpbnQgc3RhdCwgdW5zaWduZWQKIAkJCWZhczIxNl9t
ZXNzYWdlKGluZm8pOwogCQkJYnJlYWs7CiAJCX0KKwkJLyogZWxzZSwgZmFsbCB0aHJvdWdoICov
CiAKIAlkZWZhdWx0OgogCQlmYXMyMTZfbG9nKGluZm8sIDAsICJpbnRlcm5hbCBwaGFzZSAlcyBm
b3IgZnVuY3Rpb24gZG9uZT8iCkBAIC0xOTU3LDYgKzE5NjQsNyBAQCBzdGF0aWMgdm9pZCBmYXMy
MTZfa2ljayhGQVMyMTZfSW5mbyAqaW5mbykKIAlzd2l0Y2ggKHdoZXJlX2Zyb20pIHsKIAljYXNl
IFRZUEVfUVVFVUU6CiAJCWZhczIxNl9hbGxvY2F0ZV90YWcoaW5mbywgU0NwbnQpOworCQkvKiBm
YWxsIHRocm91Z2ggKi8KIAljYXNlIFRZUEVfT1RIRVI6CiAJCWZhczIxNl9zdGFydF9jb21tYW5k
KGluZm8sIFNDcG50KTsKIAkJYnJlYWs7Ci0tIAoyLjIyLjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
