Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA41C175F03
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VChkbjbOeOLS+BOOZ5WxoqaZYpa7YiWNu86+gZ2ZENQ=; b=eTnYu1TKZd3C5h
	bZ4mb22T57NNLc8Q7KL6Rk1ZJ3IYujS1WWChazNaImwGbuD7d3ecOojxSu2M83+Flnm7HgKSjb06l
	evGTEnUWF+jlA7gqDR5zFtVga9/smX7iCJruKhqEWk/k72K4e7OrS/KSkCfJFzqRK3alirMlhsQ1F
	qqDfL94GDRDhZHSNXeuyvaAiagDpHRYuZFnbdjzMDWuee559xw5YkXUHtAqIiTUYCj+d3HBTotRqF
	gH3ONZZTVOLjwq2YKlinqq0k0FCyW/tXdMfi8hyaGnh3oSH51v1ETmJRXH/4yGxa2qfzSRgIPg3ig
	TwkQLeKi5DcJzcqqBepQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nTX-0005rR-1g; Mon, 02 Mar 2020 15:59:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nSh-0005Hk-LB; Mon, 02 Mar 2020 15:58:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 0B2A628A18A
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: linux@armlinux.org.uk, heiko@sntech.de, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
Date: Mon,  2 Mar 2020 16:57:02 +0100
Message-Id: <20200302155703.278421-2-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302155703.278421-1-mylene.josserand@collabora.com>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_075831_841724_CBD13628 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mylene.josserand@collabora.com, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGV0ZXJtaW5lIHdoaWNoIHJldmlzaW9uIG9mIHJrMzI4OCBieSBjaGVja2luZyB0aGUgSERNSSB2
ZXJzaW9uLgpBY2NvcmRpbmcgdG8gdGhlIFJvY2tjaGlwIEJTUCBrZXJuZWwsIG9uIHJrMzI4OHcs
IHRoZSBIRE1JCnJldmlzaW9uIGVxdWFscyAweDFBIHdoaWNoIGlzIG5vdCB0aGUgY2FzZSBmb3Ig
dGhlIHJrMzI4OCBbMV0uCgpBcyB0aGVzZSBTT0MgaGF2ZSBzb21lIGRpZmZlcmVuY2VzLCB0aGUg
bmV3IGZ1bmN0aW9uCidzb2NfaXNfcmszMjg4dycgd2lsbCBoZWxwIHVzIHRvIGtub3cgb24gd2hp
Y2ggcmV2aXNpb24Kd2UgYXJlLgoKWzFdOmh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51
eC91LWJvb3QvYmxvYi9mOTkyZmUzMzM0YWE1MDkwYWNiNDQ4MjYxOTgyNjI4YjVhM2QzN2E1L2Fy
Y2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvY3B1LmgjTDMwLi5MMzQKClNpZ25lZC1v
ZmYtYnk6IE15bMOobmUgSm9zc2VyYW5kIDxteWxlbmUuam9zc2VyYW5kQGNvbGxhYm9yYS5jb20+
Ci0tLQogYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yb2NrY2hpcC5jIHwgNDUgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmV2aXNpb24uaCAgIHwg
MjIgKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDY3IGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3NvYy9yb2NrY2hpcC9yZXZpc2lvbi5oCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yb2NrY2hpcC5jIGIvYXJjaC9hcm0vbWFjaC1y
b2NrY2hpcC9yb2NrY2hpcC5jCmluZGV4IGY5Nzk3YTJiNWQwZC4uYjkwN2JhMzkwMDkzIDEwMDY0
NAotLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JvY2tjaGlwLmMKKysrIGIvYXJjaC9hcm0v
bWFjaC1yb2NrY2hpcC9yb2NrY2hpcC5jCkBAIC05LDEyICs5LDE0IEBACiAjaW5jbHVkZSA8bGlu
dXgva2VybmVsLmg+CiAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgogI2luY2x1ZGUgPGxpbnV4L2lv
Lmg+CisjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgogI2luY2x1ZGUgPGxpbnV4L29mX3Bs
YXRmb3JtLmg+CiAjaW5jbHVkZSA8bGludXgvaXJxY2hpcC5oPgogI2luY2x1ZGUgPGxpbnV4L2Ns
ay1wcm92aWRlci5oPgogI2luY2x1ZGUgPGxpbnV4L2Nsb2Nrc291cmNlLmg+CiAjaW5jbHVkZSA8
bGludXgvbWZkL3N5c2Nvbi5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgorI2luY2x1ZGUg
PHNvYy9yb2NrY2hpcC9yZXZpc2lvbi5oPgogI2luY2x1ZGUgPGFzbS9tYWNoL2FyY2guaD4KICNp
bmNsdWRlIDxhc20vbWFjaC9tYXAuaD4KICNpbmNsdWRlIDxhc20vaGFyZHdhcmUvY2FjaGUtbDJ4
MC5oPgpAQCAtMjIsNiArMjQsNDkgQEAKICNpbmNsdWRlICJwbS5oIgogCiAjZGVmaW5lIFJLMzI4
OF9USU1FUjZfN19QSFlTIDB4ZmY4MTAwMDAKKyNkZWZpbmUgUkszMjg4X0hETUlfUkVWX1JFRwkw
eDA0CisjZGVmaW5lIFJLMzI4OFdfSERNSV9SRVYJMHgxQQorCitzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCByazMyODhfZHRfaGRtaV9tYXRjaFtdIF9faW5pdGNvbnN0ID0geworCXsg
LmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjg4LWR3LWhkbWkiIH0sCisJeyB9Cit9OworCitp
bnQgcmszMjg4X2dldF9yZXZpc2lvbih2b2lkKQoreworCXN0YXRpYyBpbnQgcmV2aXNpb24gPSBS
SzMyODhfU09DX1JFVl9VTktOT1dOOworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqZG47CisJdm9pZCBf
X2lvbWVtICpoZG1pX2Jhc2U7CisKKwlpZiAocmV2aXNpb24gIT0gUkszMjg4X1NPQ19SRVZfVU5L
Tk9XTikKKwkJcmV0dXJuIHJldmlzaW9uOworCisJZG4gPSBvZl9maW5kX21hdGNoaW5nX25vZGUo
TlVMTCwgcmszMjg4X2R0X2hkbWlfbWF0Y2gpOworCWlmICghZG4pIHsKKwkJcHJfZXJyKCIlczog
Q291bGRuJ3QgZmluZCBIRE1JIG5vZGVcbiIsIF9fZnVuY19fKTsKKwkJcmV0dXJuIC1FSU5WQUw7
CisJfQorCisJaGRtaV9iYXNlID0gb2ZfaW9tYXAoZG4sIDApOworCW9mX25vZGVfcHV0KGRuKTsK
KworCWlmICghaGRtaV9iYXNlKSB7CisJCXByX2VycigiJXM6IENvdWxkbid0IG1hcCAlcE9GIHJl
Z3NcbiIsIF9fZnVuY19fLAorCQkgICAgICAgaGRtaV9iYXNlKTsKKwkJcmV0dXJuIC1FTlhJTzsK
Kwl9CisKKwlpZiAocmVhZGxfcmVsYXhlZChoZG1pX2Jhc2UgKyBSSzMyODhfSERNSV9SRVZfUkVH
KSA9PQorCSAgICBSSzMyODhXX0hETUlfUkVWKQorCQlyZXZpc2lvbiA9IFJLMzI4OF9TT0NfUkVW
X1JLMzI4OFc7CisJZWxzZQorCQlyZXZpc2lvbiA9IFJLMzI4OF9TT0NfUkVWX1JLMzI4ODsKKwor
CWlvdW5tYXAoaGRtaV9iYXNlKTsKKworCXJldHVybiByZXZpc2lvbjsKK30KK0VYUE9SVF9TWU1C
T0wocmszMjg4X2dldF9yZXZpc2lvbik7CiAKIHN0YXRpYyB2b2lkIF9faW5pdCByb2NrY2hpcF90
aW1lcl9pbml0KHZvaWQpCiB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL3NvYy9yb2NrY2hpcC9yZXZp
c2lvbi5oIGIvaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmV2aXNpb24uaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjIyNjQxOWM2MGFmMAotLS0gL2Rldi9udWxsCisrKyBi
L2luY2x1ZGUvc29jL3JvY2tjaGlwL3JldmlzaW9uLmgKQEAgLTAsMCArMSwyMiBAQAorLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLworLyoKKyAqIENvcHlyaWdodCAy
MDIwIENvbGxhYm9yYQorICovCisKKyNpZm5kZWYgX19TT0NfUk9DS0NISVBfUkVWSVNJT05fSF9f
CisjZGVmaW5lIF9fU09DX1JPQ0tDSElQX1JFVklTSU9OX0hfXworCitlbnVtIHJrMzI4OF9zb2Nf
cmV2aXNpb24geworCVJLMzI4OF9TT0NfUkVWX1VOS05PV04sCisJUkszMjg4X1NPQ19SRVZfUksz
Mjg4LAorCVJLMzI4OF9TT0NfUkVWX1JLMzI4OFcsCit9OworCitpbnQgcmszMjg4X2dldF9yZXZp
c2lvbih2b2lkKTsKKworc3RhdGljIGlubGluZSBib29sIHNvY19pc19yazMyODh3KHZvaWQpCit7
CisJcmV0dXJuIHJrMzI4OF9nZXRfcmV2aXNpb24oKSA9PSBSSzMyODhfU09DX1JFVl9SSzMyODhX
OworfQorCisjZW5kaWYgLyogX19TT0NfUk9DS0NISVBfUkVWSVNJT05fSF9fICovCi0tIAoyLjI1
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
