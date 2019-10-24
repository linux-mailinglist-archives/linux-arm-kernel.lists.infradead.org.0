Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE80CE2ACB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyYZhzTNLBr/5wr5oZIKKgMBe+kvqJ6wZm6VmTev3B8=; b=A3oA9hMBodRPS3
	7a7Sma4j7gzh5HMvRTXcwh7aHzsoQD4to6Ek3gnq6Lj7bwH5uumETdG+59pbgjLSx6hTsU0yYEsQp
	20jTjgLyYAiOy19WNQG9583Ke3r1mzRvF2KzQ80O/o9Auzkccr8TA+mnI2XBBv9AHtNdHOb2oubty
	1WzHAnwub5aILmWHjmy22Ui6dgZZCArd2njduPEyInnJlaA518EQbfqNBi1C3/bjW9TG8QWbBhQbv
	M3yEtsKAdXFk2MEqptOZ182GZ8Yb2rJX/1RJdpD3vm0PGt58snZ/UV8AtXUmILCluhhuPd0l5eh+7
	mnw7w/BdPgYQuvig7fKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXDo-0007sP-48; Thu, 24 Oct 2019 07:07:48 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXDZ-0007rH-1v
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:07:34 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 9DC693E88C;
 Thu, 24 Oct 2019 07:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1571900850;
 bh=Dd3LcWl/3IsTamvy8Zm2T8waJpgR0GN+K+t3Gns4Kzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BljIAdCmSBPQJoMkCdPK9vSnCl/XK2ohuqjyatJrxZfuKtzIGnroppAOkatB8EdHp
 MXmTBPmWjHgzJWrUFGaQ8AOLWc4/tHMtnCiiNw4dhle3YrpjGysM1ut1pPTiNYlm9z
 TtvWMxSeW+a6CvejIjQNDcWqlsE8iR9ZfnkaG7kA=
Date: Thu, 24 Oct 2019 03:07:30 -0400
From: Brian Masney <masneyb@onstation.org>
To: Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
Message-ID: <20191024070730.GA19974@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-6-masneyb@onstation.org>
 <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
 <20191023124753.GA14218@onstation.org>
 <c26159f5-e6fe-07f1-51b3-50b72b258846@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c26159f5-e6fe-07f1-51b3-50b72b258846@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_000733_155541_6C6D353B 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgMDQ6Mzk6MjFQTSArMDMwMCwgR2VvcmdpIERqYWtvdiB3
cm90ZToKPiBPbiAyMy4xMC4xOSDQsy4gMTU6NDcg0YcuLCBCcmlhbiBNYXNuZXkgd3JvdGU6Cj4g
PiBPbiBXZWQsIE9jdCAyMywgMjAxOSBhdCAwMjo1MDoxOVBNICswMzAwLCBHZW9yZ2kgRGpha292
IHdyb3RlOgo+ID4+IE9uIDEzLjEwLjE5INCzLiAxMTowOCDRhy4sIEJyaWFuIE1hc25leSB3cm90
ZToKPiA+Pj4gQWRkIGludGVyY29ubmVjdCBub2RlcyB0aGF0J3MgbmVlZGVkIHRvIHN1cHBvcnQg
YnVzIHNjYWxpbmcuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE1hc25leSA8bWFz
bmV5YkBvbnN0YXRpb24ub3JnPgo+ID4+PiAtLS0KPiA+Pj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3Fj
b20tbXNtODk3NC5kdHNpIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+Pj4g
IDEgZmlsZSBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9xY29tLW1zbTg5NzQuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3Fjb20tbXNtODk3NC5kdHNpCj4gPj4+IEBAIC0xMTUyLDYgKzEyMDcsMTEgQEAKPiA+Pj4gIAkJ
CQkgICAgICAgICAgICAgICJjb3JlIiwKPiA+Pj4gIAkJCQkgICAgICAgICAgICAgICJ2c3luYyI7
Cj4gPj4+ICAKPiA+Pj4gKwkJCQlpbnRlcmNvbm5lY3RzID0gPCZtbXNzbm9jIE1OT0NfTUFTX0dS
QVBISUNTXzNEICZiaW1jIEJJTUNfU0xWX0VCSV9DSDA+LAo+ID4+PiArCQkJCSAgICAgICAgICAg
ICAgICA8Jm9jbWVtbm9jIE9DTUVNX1ZOT0NfTUFTX0dGWDNEICZvY21lbW5vYyBPQ01FTV9TTFZf
T0NNRU0+Owo+ID4+Cj4gPj4gV2hvIHdpbGwgYmUgdGhlIHJlcXVlc3RpbmcgYmFuZHdpZHRoIHRv
IEREUiBhbmQgb2NtZW0/IElzIGl0IHRoZSBkaXNwbGF5IG9yIEdQVQo+ID4+IG9yIGJvdGg/IFRo
ZSBhYm92ZSBzZWVtIGxpa2UgR1BVLXJlbGF0ZWQgaW50ZXJjb25uZWN0cywgc28gbWF5YmUgdGhl
c2UKPiA+PiBwcm9wZXJ0aWVzIHNob3VsZCBiZSBpbiB0aGUgR1BVIERUIG5vZGUuCj4gPiAKPiA+
IFRoZSBkaXNwbGF5IGlzIHdoYXQgY3VycmVudGx5IHJlcXVlc3RzIHRoZSBpbnRlcmNvbm5lY3Qg
cGF0aCwKPiA+IHNwZWNpZmljYWxseSBtZHA1X3NldHVwX2ludGVyY29ubmVjdCgpIGluCj4gPiBk
cml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2ttcy5jLiBUaGUgRnJlZWRyZW5vIEdQ
VSBiaW5kaW5ncwo+ID4gY3VycmVudGx5IGRvbid0IGhhdmUgaW50ZXJjb25uZWN0IHN1cHBvcnQu
IE1heWJlIHRoaXMgaXMgc29tZXRoaW5nIHRoYXQKPiA+IEkgc2hvdWxkIGFkZCB0byB0aGF0IGRy
aXZlciBhcyB3ZWxsPwo+IAo+IFRoZSAibWRwMC1tZW0iIGFuZCAibWRwMS1tZW0iIHBhdGhzIG1l
bnRpb25lZCBpbiB0aGUgbWRwNV9rbXMuYyBhcmUgdGhlIHR3bwo+IGludGVyY29ubmVjdHMgYmV0
d2VlbiB0aGUgZGlzcGxheSBhbmQgRERSIG1lbW9yeS4KCk9LLCBJIHNlZS4gTW9zdCBvZiB0aGUg
aW50ZXJjb25uZWN0IHBhdGhzIGluIHRoZSBkb3duc3RyZWFtIE1TTSAzLjQKc291cmNlcyBhcmUg
Y29uZmlndXJlZCBpbiBkZXZpY2UgdHJlZSB1c2luZyB0aGUKcWNvbSxtc20tYnVzLHZlY3RvcnMt
S0JwcyBwcm9wZXJ0eSwgd2hpY2ggaXMgd2hhdCBJIHdhcyBvbmx5IGxvb2tpbmcgYXQKYmVmb3Jl
LiBUaGUgaW50ZXJjb25uZWN0IHBhdGggZm9yIHRoZSBkaXNwbGF5IGlzIGNvbmZpZ3VyZWQgZGly
ZWN0bHkgaW4KY29kZSAoZHJpdmVycy92aWRlby9tc20vbWRzcy9tZHNzX21kcC5jKSB0byBzZXR1
cCBhIHBhdGggYmV0d2VlbgpNU01fQlVTX01BU1RFUl9NRFBfUE9SVDAgYW5kIE1TTV9CVVNfU0xB
VkVfRUJJX0NIMC4KCkluIHRoZSB1cHN0cmVhbSBrZXJuZWwsIGl0IGxvb2tzIGxpa2UgSSdsbCBu
ZWVkIHRvCgogIDEpIGFkZCBzdXBwb3J0IGZvciBhbiBvcHRpb25hbCBzZWNvbmQgaW50ZXJjb25u
ZWN0IHBhdGggZm9yIG9jbWVtIHRvCiAgICAgZHJpdmVycy9ncHUvZHJtL21zbS9hZHJlbm8vYWRy
ZW5vX2dwdS5jLgoKICAyKSBhZGQgaW1wbGVtZW50YXRpb25zIG9mIGdwdV9nZXRfZnJlcSBhbmQg
Z3B1X2dldF9mcmVxIHRvIHRoZQogICAgIGFkcmVub19ncHVfZnVuY3Mgc3RydWN0IGluIGRyaXZl
cnMvZ3B1L2RybS9tc20vYWRyZW5vL2EzeHhfZ3B1LmMuCgpCcmlhbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
