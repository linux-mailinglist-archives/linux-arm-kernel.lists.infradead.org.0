Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4711EF751
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltMM3N5ESqqIflUMhm+SEHASrY6qsu+IgkG8HJRHHd0=; b=SaCAy+oYJgL+1v
	ykr27jr46jhRdmbdrE6ZeKazXgTMxAany9kZJFV3ZlQxuYtBi+ua01H37zrj+Dx5W/UHL6aikWAPR
	Hl730MeBCaLwlerxGLNUuG3x3TGpAokij169pahHe5OqylKS8d0aAEYUSsCPs6ejIc0Caz3c61FJf
	xJeSIqnWDp1Bn2UTZWYCj85keu/RkUgYOmtheBFRRyM/274ut+xj5Gsyc8mOm3eQMAN5wQ8BXwVeP
	IDTGzTUDLeQXSSyYV81oh5kEFKuEi+KCssGDEgkCUNUqsPOggugf1LjrqZfZdQeWtP6x1Wh4AaMDM
	eiiVKQhix6lMuaVFFUrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBQa-0007Pq-Bm; Fri, 05 Jun 2020 12:26:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBPu-0006zV-Fa
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:25:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F17072075B;
 Fri,  5 Jun 2020 12:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591359945;
 bh=pLoF6CctGEQJ++vNC1sEPzcqQMNSpnwUdvyBSVNNa/A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=viD7xH2llsmyz3vCEfzjxxucc9KKYU3dixjNeBDFKWKNPbaCZYRUVCjb1SEES2SVJ
 cqwKfi6ckI8BRSM7MOxUeDhHpic765XX4gfsxGddDrTx8sROe/102bWh5KakRbxCiw
 fsFUwOEfgedxEPQI+hoSpNEgSAH8dPkV5z40zISY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 04/14] net: stmmac: enable timestamp snapshot for
 required PTP packets in dwmac v5.10a
Date: Fri,  5 Jun 2020 08:25:30 -0400
Message-Id: <20200605122540.2882539-4-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200605122540.2882539-1-sashal@kernel.org>
References: <20200605122540.2882539-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_052546_675182_9E440157 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Fugang Duan <fugang.duan@nxp.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRnVnYW5nIER1YW4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+CgpbIFVwc3RyZWFtIGNvbW1p
dCBmMmZiNmI2Mjc1ZWJhOWQzMTI5NTdjYTQ0YzQ4N2JkNzgwZGE2MTY5IF0KCkZvciByeCBmaWx0
ZXIgJ0hXVFNUQU1QX0ZJTFRFUl9QVFBfVjJfRVZFTlQnLCBpdCBzaG91bGQgYmUKUFRQIHYyLzgw
Mi5BUzEsIGFueSBsYXllciwgYW55IGtpbmQgb2YgZXZlbnQgcGFja2V0LCBidXQgSFcgb25seQp0
YWtlIHRpbWVzdGFtcCBzbmFwc2hvdCBmb3IgYmVsb3cgUFRQIG1lc3NhZ2U6IHN5bmMsIFBkZWxh
eV9yZXEsClBkZWxheV9yZXNwLgoKVGhlbiBpdCBjYXVzZXMgYmVsb3cgaXNzdWUgd2hlbiB0ZXN0
IEUyRSBjYXNlOgpwdHA0bFsyNDc5LjUzNF06IHBvcnQgMTogcmVjZWl2ZWQgREVMQVlfUkVRIHdp
dGhvdXQgdGltZXN0YW1wCnB0cDRsWzI0ODEuNDIzXTogcG9ydCAxOiByZWNlaXZlZCBERUxBWV9S
RVEgd2l0aG91dCB0aW1lc3RhbXAKcHRwNGxbMjQ4MS43NThdOiBwb3J0IDE6IHJlY2VpdmVkIERF
TEFZX1JFUSB3aXRob3V0IHRpbWVzdGFtcApwdHA0bFsyNDgzLjUyNF06IHBvcnQgMTogcmVjZWl2
ZWQgREVMQVlfUkVRIHdpdGhvdXQgdGltZXN0YW1wCnB0cDRsWzI0ODQuMjMzXTogcG9ydCAxOiBy
ZWNlaXZlZCBERUxBWV9SRVEgd2l0aG91dCB0aW1lc3RhbXAKcHRwNGxbMjQ4NS43NTBdOiBwb3J0
IDE6IHJlY2VpdmVkIERFTEFZX1JFUSB3aXRob3V0IHRpbWVzdGFtcApwdHA0bFsyNDg2Ljg4OF06
IHBvcnQgMTogcmVjZWl2ZWQgREVMQVlfUkVRIHdpdGhvdXQgdGltZXN0YW1wCnB0cDRsWzI0ODcu
MjY1XTogcG9ydCAxOiByZWNlaXZlZCBERUxBWV9SRVEgd2l0aG91dCB0aW1lc3RhbXAKcHRwNGxb
MjQ4Ny4zMTZdOiBwb3J0IDE6IHJlY2VpdmVkIERFTEFZX1JFUSB3aXRob3V0IHRpbWVzdGFtcAoK
VGltZXN0YW1wIHNuYXBzaG90IGRlcGVuZGVuY3kgb24gcmVnaXN0ZXIgYml0cyBpbiByZWNlaXZl
ZCBwYXRoOgpTTkFQVFlQU0VMIFRTTVNUUkVOQSBUU0VWTlRFTkEgCVBUUF9NZXNzYWdlcwowMSAg
ICAgICAgIHggICAgICAgICAwICAgICAgICAgIFNZTkMsIEZvbGxvd19VcCwgRGVsYXlfUmVxLAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERlbGF5X1Jlc3AsIFBkZWxheV9SZXEsIFBk
ZWxheV9SZXNwLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBkZWxheV9SZXNwX0Zv
bGxvd19VcAowMSAgICAgICAgIDAgICAgICAgICAxICAgICAgICAgIFNZTkMsIFBkZWxheV9SZXEs
IFBkZWxheV9SZXNwCgpGb3IgZHdtYWMgdjUuMTBhLCBlbmFibGluZyBhbGwgZXZlbnRzIGJ5IHNl
dHRpbmcgcmVnaXN0ZXIKRFdDX0VRT1NfVElNRV9TVEFNUElOR1tTTkFQVFlQU0VMXSB0byAy4oCZ
YjAxLCBjbGVhcmluZyBiaXQgW1RTRVZOVEVOQV0KdG8gMOKAmWIwLCB3aGljaCBjYW4gc3VwcG9y
dCBhbGwgcmVxdWlyZWQgZXZlbnRzLgoKU2lnbmVkLW9mZi1ieTogRnVnYW5nIER1YW4gPGZ1Z2Fu
Zy5kdWFuQG54cC5jb20+ClNpZ25lZC1vZmYtYnk6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2
ZW1sb2Z0Lm5ldD4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3Jn
PgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19tYWluLmMg
fCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19t
YWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5j
CmluZGV4IDE2MjM1MTZlZmIxNy4uOTgyYmU3NWZkZTgzIDEwMDY0NAotLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19tYWluLmMKQEAgLTYzMCw3ICs2MzAsOCBA
QCBzdGF0aWMgaW50IHN0bW1hY19od3RzdGFtcF9zZXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwg
c3RydWN0IGlmcmVxICppZnIpCiAJCQljb25maWcucnhfZmlsdGVyID0gSFdUU1RBTVBfRklMVEVS
X1BUUF9WMl9FVkVOVDsKIAkJCXB0cF92MiA9IFBUUF9UQ1JfVFNWRVIyRU5BOwogCQkJc25hcF90
eXBlX3NlbCA9IFBUUF9UQ1JfU05BUFRZUFNFTF8xOwotCQkJdHNfZXZlbnRfZW4gPSBQVFBfVENS
X1RTRVZOVEVOQTsKKwkJCWlmIChwcml2LT5zeW5vcHN5c19pZCAhPSBEV01BQ19DT1JFXzVfMTAp
CisJCQkJdHNfZXZlbnRfZW4gPSBQVFBfVENSX1RTRVZOVEVOQTsKIAkJCXB0cF9vdmVyX2lwdjRf
dWRwID0gUFRQX1RDUl9UU0lQVjRFTkE7CiAJCQlwdHBfb3Zlcl9pcHY2X3VkcCA9IFBUUF9UQ1Jf
VFNJUFY2RU5BOwogCQkJcHRwX292ZXJfZXRoZXJuZXQgPSBQVFBfVENSX1RTSVBFTkE7Ci0tIAoy
LjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
