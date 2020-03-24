Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2531914C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTYWGUTyxWgslzaxkCOrhXlM7i4WAxmq3+/s2C1TUBo=; b=JYrZ0zMo1tsi8j
	a7WvQYGyUQY8a2cAdj+hU5pC6E+Q8TwkSmpUxP+jWdnqx2NH+doIUOkUtkSrqsQTwpxhq6aQQRHoj
	oUMsQvXdb6WV2c/AMxolab03cuJhhnD4E+EaxsBNAE+Bx/oSv1xV+Rb7/ICKw9aJ6bSKI8Ox8XqJc
	Aa64QMrocR1liw1Hi5GwGYzoL8olGB+E5sa3VU5VWTXWMSLwAsDpK22j99KNNd6trbiH6IJkGWjqF
	Y2R6ef8LwI+sOOGvrOBAnWjpYmqqTyr9lrdJNrVlUlhzsxxXK0EFoAVTL7ClRUqxHZA0o4Dlu15G4
	xx05thkCCwdwRCJtZ45w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGleE-0000cw-4l; Tue, 24 Mar 2020 15:39:22 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGldz-0000cM-0F
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:39:08 +0000
Received: by mail-ot1-x344.google.com with SMTP id a49so17396172otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gdNgUyovH3fFL036Rwp6qFNO07syiek5Tdf11PTq7yM=;
 b=ONu4l2SCV9dgZFVg2UfYC52IuLbDCEb5mUeYEhKuzsvwFmPCM5N8SJEEk4UafeWoac
 DoP3VVqPJ1Dk2LAERFmDMuVGBO0TY89uQuoBp7MFHclOAMl3bheWXApCowCeUXM/iSYl
 Nki8KGmmkSaOqM2fHh6N8WGQtlddbJhB3NDhpJ++w3NiESRoLgfLeVfr2rbE+cELcGxq
 o2DKUdhGkONXExSAuo9kb0sL0NAcnUZsgjhHgPJPpfzcsj07J5frb6YO7TEkmwK/jufN
 epMmVkXkVFOiJMmQSqJtLz6OILDjXl85QLHgLlYPCaP8HtfqS6wc3U9QgUQs5Zr3ATYI
 g9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gdNgUyovH3fFL036Rwp6qFNO07syiek5Tdf11PTq7yM=;
 b=NAFhZiHdE9UY2srRZTwHYYyATaescwfEk0a7Kp7J90ogpbkdp6TrU5WtR3pa5/lwuV
 eO5UteBKlTDTTQvLnyGV8iqdSN19RCkiKwTBzUbmLnMIXeLAf5HxjJ3N+rzQC08Q20tN
 8qtAkPwAIyiWAFokbHo0QtFZkwpHig66nJi3CJi+T07WDe1b0oxc/lpjqSMT7hgUNSdQ
 s5X//jdpave1JmTmXGFPBFTKUTIr2xCqjbzAHfAV6rGabUWUl5uPFulXAHZRLR/uZJZl
 q/EXrKH3nEn79RFe0pql4v84PQUuV34W49x4uxPmIXWHpzj5K79wbVAKAGPZs6AmqlFL
 TUfg==
X-Gm-Message-State: ANhLgQ3vKIgNgA/3X9rO6rRVVeovrk2c+oCB2ze3B5MvCPBQ+QxVfhNy
 HYvl1/PHGablFKSACEFG83JrnYit2sKtlpojR+F4YQ==
X-Google-Smtp-Source: ADFU+vtLsKQwanUzdtbf2Q0mesZdWrEI+84/TzmxAH6yGULo2vc9lF+1ZHeUnyQ0lDvVCPKemKF+dhoLeJTrSBfVjBc=
X-Received: by 2002:a4a:e48a:: with SMTP id s10mr2128023oov.10.1585064345759; 
 Tue, 24 Mar 2020 08:39:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200317135740.19412-1-robert.foss@linaro.org>
 <20200317135740.19412-7-robert.foss@linaro.org> <2523204.mvXUDI8C0e@g550jk>
In-Reply-To: <2523204.mvXUDI8C0e@g550jk>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 24 Mar 2020 16:38:54 +0100
Message-ID: <CAG3jFyuiVFHfNVwCAEynH0j8fK91k32m+nvZYYR79gju9cwPKQ@mail.gmail.com>
Subject: Re: [v2 6/6] arm64: defconfig: Enable QCOM CAMCC,
 CAMSS and CCI drivers
To: Luca Weiss <luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_083907_611140_6B3025E5 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Anson.Huang@nxp.com, catalin.marinas@arm.com,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, dinguyen@kernel.org,
 agross@kernel.org, maxime@cerno.tech, linux-arm-msm@vger.kernel.org,
 olof@lixom.net, shawnguo@kernel.org, leonard.crestez@nxp.com, will@kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGV5IEx1Y2EsCgpPbiBGcmksIDIwIE1hciAyMDIwIGF0IDIwOjUyLCBMdWNhIFdlaXNzIDxsdWNh
QHozbnR1Lnh5ej4gd3JvdGU6Cj4KPiBIaSBSb2JlcnQsCj4KPiBPbiBEaWVuc3RhZywgMTcuIE3D
pHJ6IDIwMjAgMTQ6NTc6NDAgQ0VUIFJvYmVydCBGb3NzIHdyb3RlOgo+ID4gQnVpbGQgY2FtZXJh
IGNsb2NrLCBpc3AgYW5kIGNvbnRyb2xsZXIgZHJpdmVycyBhcyBtb2R1bGVzLgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IFJvYmVydCBGb3NzIDxyb2JlcnQuZm9zc0BsaW5hcm8ub3JnPgo+ID4gUmV2
aWV3ZWQtYnk6IEJqb3JuIEFuZGVyc3NvbiA8Ympvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc+Cj4g
PiAtLS0KPiA+ICBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIHwgNCArKysrCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwo+ID4g
aW5kZXggNGRiMjIzZGJjNTQ5Li43Y2I2OTg5MjQ5YWIgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2Fy
bTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gPiArKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnCj4gPiBAQCAtMzc2LDYgKzM3Niw3IEBAIENPTkZJR19JMkNfTUVTT049eQo+ID4gIENPTkZJ
R19JMkNfTVY2NFhYWD15Cj4gPiAgQ09ORklHX0kyQ19PV0w9eQo+ID4gIENPTkZJR19JMkNfUFhB
PXkKPiA+ICtDT05GSUdfSTJDX1FDT01fQ0NJPW0KPiA+ICBDT05GSUdfSTJDX1FDT01fR0VOST1t
Cj4gPiAgQ09ORklHX0kyQ19RVVA9eQo+ID4gIENPTkZJR19JMkNfUkszWD15Cj4gPiBAQCAtNTMw
LDYgKzUzMSw3IEBAIENPTkZJR19WSURFT19TQU1TVU5HX1M1UF9NRkM9bQo+ID4gIENPTkZJR19W
SURFT19TQU1TVU5HX0VYWU5PU19HU0M9bQo+ID4gIENPTkZJR19WSURFT19SRU5FU0FTX0ZDUD1t
Cj4gPiAgQ09ORklHX1ZJREVPX1JFTkVTQVNfVlNQMT1tCj4gPiArQ09ORklHX1ZJREVPX1FDT01f
Q0FNU1M9bQo+ID4gIENPTkZJR19EUk09bQo+ID4gIENPTkZJR19EUk1fSTJDX05YUF9UREE5OThY
PW0KPiA+ICBDT05GSUdfRFJNX05PVVZFQVU9bQo+ID4gQEAgLTczMiw2ICs3MzQsNyBAQCBDT05G
SUdfTVNNX0dDQ184OTk0PXkKPiA+ICBDT05GSUdfTVNNX01NQ0NfODk5Nj15Cj4gPiAgQ09ORklH
X01TTV9HQ0NfODk5OD15Cj4gPiAgQ09ORklHX1FDU19HQ0NfNDA0PXkKPiA+ICtDT05GSUdfU0RN
X0NBTUNDXzg0NT1tCj4KPiBZb3Ugc2VlbSB0byBoYXZlIHRoaXMgb3B0aW9uIHR3aWNlIGluIHRo
aXMgcGF0Y2guCgpUaGFua3MgZm9yIGNhdGNoaW5nIHRoaXMuCkknbGwgc2VuZCBvdXQgYSBmaXgg
aW4gdjMuCgo+Cj4gPiAgQ09ORklHX1NETV9HQ0NfODQ1PXkKPiA+ICBDT05GSUdfU01fR0NDXzgx
NTA9eQo+ID4gIENPTkZJR19RQ09NX0hGUExMPXkKPiA+IEBAIC03NjIsNiArNzY1LDcgQEAgQ09O
RklHX1FDT01fQ09NTUFORF9EQj15Cj4gPiAgQ09ORklHX1FDT01fR0VOSV9TRT15Cj4gPiAgQ09O
RklHX1FDT01fR0xJTktfU1NSPW0KPiA+ICBDT05GSUdfUUNPTV9STVRGU19NRU09bQo+ID4gK0NP
TkZJR19TRE1fQ0FNQ0NfODQ1PW0KPgo+IF4KPgo+ID4gIENPTkZJR19RQ09NX1JQTUg9eQo+ID4g
IENPTkZJR19RQ09NX1JQTUhQRD15Cj4gPiAgQ09ORklHX1FDT01fU01FTT15Cj4KPiBSZWdhcmRz
Cj4gTHVjYQo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
