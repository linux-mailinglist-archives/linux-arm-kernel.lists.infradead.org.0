Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD17084EE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHeIqXEVS5C+DVSLw7oSWC7Aemn2mF0FXyKPXb+cL8c=; b=mqNWp/cMukXSJ0
	9uL4ZqkwUVsFEcqJbK3LEf5v8Di+qq/ECtxBhrqPp2l9+RKqJhGoJyoXexpzzQTcoTmyeVBeEuh8C
	CFy6vhTiwiYA6PlQDc7uNl9WEu4ASWJlrePUHHvpBpj0R79fZoFDBxuvuy4ScLStTOd24mCUlGqTk
	eP6yl3ZTWG6Tvf/RW28vtZ+cPL1wWJFumyjOxdVoQjmX95x7NHlV9Puk6we47ENw/ns92xRyCS30V
	NYiXPf80ShcaDT0XyqrTuRVCxIXTnn55JJp9GxpMlfx2qdN+I4ispYJcsmLKcpQIrQuSz3H2T/4aA
	+YJ9YKHl2ChFfw9oMqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvN68-0007i1-Dj; Wed, 07 Aug 2019 14:39:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvN5v-0007ha-9p
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:39:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id p74so295568wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 07:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K3Yjg+xwVoamXkqxN6/Mo8Ar1gX/X1ON888J6lxpDb0=;
 b=B2l7rU7IPu+JXRGMl8QfJUzpwZ28LjIHxm8XnVXNq0gwva0s9ictzM6X7F5r5lOaRh
 W/9M+aS5PF/moOqTNrvL8PTWBrU1OChSRHHYD5Gl26UM2c/XJuQSj+zUSqeyx5mHw9KV
 JxrV/PASdpePmtAV2LgSlO1jODiKVEaxrkvNE2zyoUpKD+57HAIz9G0Vt+cbffnZAB8y
 KMOyQ4wYUJL7Jx8aRRqsfh5HCuPKEioi/X+yVVB2YYKKRmop624g3uv1OSnQn1OiZcbN
 X7xXbq5SabV5/H+oo/rTqQLcX1gftqHyjyL3W23xdeYYUU5gpEjxvNqmpl2XC+ZUVEHH
 O57g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K3Yjg+xwVoamXkqxN6/Mo8Ar1gX/X1ON888J6lxpDb0=;
 b=DQkcaZT4gfmQPfxJ88uZL0qw5xY1sCrpBQnrzctzSaJY3Bf3qOYDz3fS9M9UOtyjM/
 JYSEvRtjz8edNpNnK03N9LL8noUvLysNIiz0ru3RXUx0U2xbRyjzSAvga1yjdsQdLYRf
 UdgUAolo6azKZY9oyWCZQf0q1+fLiSzbOXOHWJ8bI+LrfzV+L4oCcYqHuvaz75HXGd/D
 x0Z41i9mQTYEDmEg0QrT4avZNAApKWPuhK9KkVrzebOQihD16cusxabCSDn8WIZ7R+d0
 CxjlG1aL7vz+QJrsxHuU7Oh7YywJVIp/uZ8ssBdMXnnRpF2Tl0dxvl4zueOl/pUA71Sl
 q63Q==
X-Gm-Message-State: APjAAAWmsKxV0iNyZzbQ9gpwbkw5tGOBctAkE426ySynudruNjrzDmve
 m+aX4k7NLwNP2a/N2YJccVdAgEeWX116bZI9Ajk=
X-Google-Smtp-Source: APXvYqwZNSmFBi3BN7qPlFo9Y+mrgNDxC+IKDcfat8O3sJ6OJz8/ng2g2yNHMqSIvOfg0Ag2R+8W+Stu5hZuRd9Xt3k=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr290648wmc.25.1565188753002;
 Wed, 07 Aug 2019 07:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
 <CAEnQRZDr+gj_eiESLNbVUVy1rreRE1nnDgtb3g=CjaRF5Aq9Vw@mail.gmail.com>
In-Reply-To: <CAEnQRZDr+gj_eiESLNbVUVy1rreRE1nnDgtb3g=CjaRF5Aq9Vw@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 7 Aug 2019 17:39:00 +0300
Message-ID: <CAEnQRZDctjdzQ2RjJXhQh+s=d0y_j3Taa51hDaR4bqJ62C=7iQ@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_073915_345054_C94FE940 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6MDQgQU0gRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJh
bHV0YUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgNjoxOSBQ
TSBQaWVycmUtTG91aXMgQm9zc2FydAo+IDxwaWVycmUtbG91aXMuYm9zc2FydEBsaW51eC5pbnRl
bC5jb20+IHdyb3RlOgo+ID4KPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvc29mL0tj
b25maWcgYi9zb3VuZC9zb2Mvc29mL0tjb25maWcKPiA+ID4gaW5kZXggNjFiOTdmYzU1YmIyLi4y
YWEzYTFjZGY2MGMgMTAwNjQ0Cj4gPiA+IC0tLSBhL3NvdW5kL3NvYy9zb2YvS2NvbmZpZwo+ID4g
PiArKysgYi9zb3VuZC9zb2Mvc29mL0tjb25maWcKPiA+ID4gQEAgLTM2LDYgKzM2LDE1IEBAIGNv
bmZpZyBTTkRfU09DX1NPRl9BQ1BJCj4gPiA+ICAgICAgICAgU2F5IFkgaWYgeW91IG5lZWQgdGhp
cyBvcHRpb24KPiA+ID4gICAgICAgICBJZiB1bnN1cmUgc2VsZWN0ICJOIi4KPiA+ID4KPiA+ID4g
K2NvbmZpZyBTTkRfU09DX1NPRl9EVAo+ID4gPiArICAgICB0cmlzdGF0ZSAiU09GIERUIGVudW1l
cmF0aW9uIHN1cHBvcnQiCj4gPiA+ICsgICAgIHNlbGVjdCBTTkRfU09DX1NPRgo+ID4gPiArICAg
ICBzZWxlY3QgU05EX1NPQ19TT0ZfT1BUSU9OUwo+ID4gPiArICAgICBoZWxwCj4gPiA+ICsgICAg
ICAgVGhpcyBhZGRzIHN1cHBvcnQgZm9yIERldmljZSBUcmVlIGVudW1lcmF0aW9uLiBUaGlzIG9w
dGlvbiBpcwo+ID4gPiArICAgICAgIHJlcXVpcmVkIHRvIGVuYWJsZSBpLk1YOCBkZXZpY2VzLgo+
ID4gPiArICAgICAgIFNheSBZIGlmIHlvdSBuZWVkIHRoaXMgb3B0aW9uLiBJZiB1bnN1cmUgc2Vs
ZWN0ICJOIi4KPiA+ID4gKwo+ID4KPiA+IFtzbmlwXQo+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL3Nv
dW5kL3NvYy9zb2YvaW14L0tjb25maWcgYi9zb3VuZC9zb2Mvc29mL2lteC9LY29uZmlnCj4gPiA+
IGluZGV4IGZmZjY0YTk5NzBmMC4uZmEzNTk5NGE3OWM0IDEwMDY0NAo+ID4gPiAtLS0gYS9zb3Vu
ZC9zb2Mvc29mL2lteC9LY29uZmlnCj4gPiA+ICsrKyBiL3NvdW5kL3NvYy9zb2YvaW14L0tjb25m
aWcKPiA+ID4gQEAgLTEyLDYgKzEyLDcgQEAgaWYgU05EX1NPQ19TT0ZfSU1YX1RPUExFVkVMCj4g
PiA+Cj4gPiA+ICAgY29uZmlnIFNORF9TT0NfU09GX0lNWDgKPiA+ID4gICAgICAgdHJpc3RhdGUg
IlNPRiBzdXBwb3J0IGZvciBpLk1YOCIKPiA+ID4gKyAgICAgc2VsZWN0IFNORF9TT0NfU09GX0RU
Cj4gPgo+ID4gVGhpcyBsb29rcyB1cHNpZGUgZG93bi4gWW91IHNob3VsZCBzZWxlY3QgU09GX0RU
IGZpcnN0IHRoZW4gaW5jbHVkZSB0aGUKPiA+IE5YUCBzdHVmZi4KPiA+Cj4gPiA+ICAgICAgIGhl
bHAKPiA+ID4gICAgICAgICAgICAgVGhpcyBhZGRzIHN1cHBvcnQgZm9yIFNvdW5kIE9wZW4gRmly
bXdhcmUgZm9yIE5YUCBpLk1YOCBwbGF0Zm9ybXMKPiA+ID4gICAgICAgICAgICAgU2F5IFkgaWYg
eW91IGhhdmUgc3VjaCBhIGRldmljZS4KPiA+ID4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9zb2Yv
c29mLWR0LWRldi5jIGIvc291bmQvc29jL3NvZi9zb2YtZHQtZGV2LmMKPiA+ID4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4zMTQyOWJiYjVjN2UKPiA+ID4g
LS0tIC9kZXYvbnVsbAo+ID4gPiArKysgYi9zb3VuZC9zb2Mvc29mL3NvZi1kdC1kZXYuYwo+ID4g
PiBAQCAtMCwwICsxLDE1OSBAQAo+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChH
UEwtMi4wIE9SIEJTRC0zLUNsYXVzZSkKPiA+ID4gKy8vCj4gPiA+ICsvLyBDb3B5cmlnaHQgMjAx
OSBOWFAKPiA+ID4gKy8vCj4gPiA+ICsvLyBBdXRob3I6IERhbmllbCBCYWx1dGEgPGRhbmllbC5i
YWx1dGFAbnhwLmNvbT4KPiA+ID4gKy8vCj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9m
aXJtd2FyZS5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gPiArI2luY2x1
ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KPiA+ID4gKyNpbmNsdWRlIDxzb3VuZC9zb2YuaD4KPiA+
ID4gKwo+ID4gPiArI2luY2x1ZGUgIm9wcy5oIgo+ID4gPiArCj4gPiA+ICtleHRlcm4gc3RydWN0
IHNuZF9zb2ZfZHNwX29wcyBzb2ZfaW14OF9vcHM7Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBjaGFy
ICpmd19wYXRoOwo+ID4gPiArbW9kdWxlX3BhcmFtKGZ3X3BhdGgsIGNoYXJwLCAwNDQ0KTsKPiA+
ID4gK01PRFVMRV9QQVJNX0RFU0MoZndfcGF0aCwgImFsdGVybmF0ZSBwYXRoIGZvciBTT0YgZmly
bXdhcmUuIik7Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBjaGFyICp0cGxnX3BhdGg7Cj4gPiA+ICtt
b2R1bGVfcGFyYW0odHBsZ19wYXRoLCBjaGFycCwgMDQ0NCk7Cj4gPiA+ICtNT0RVTEVfUEFSTV9E
RVNDKHRwbGdfcGF0aCwgImFsdGVybmF0ZSBwYXRoIGZvciBTT0YgdG9wb2xvZ3kuIik7Cj4gPiA+
ICsKPiA+ID4gKy8qIHBsYXRmb3JtIHNwZWNpZmljIGRldmljZXMgKi8KPiA+ID4gKyNpZiBJU19F
TkFCTEVEKENPTkZJR19TTkRfU09DX1NPRl9JTVg4KQo+ID4gPiArc3RhdGljIHN0cnVjdCBzb2Zf
ZGV2X2Rlc2Mgc29mX2R0X2lteDhxeHBfZGVzYyA9IHsKPiA+ID4gKyAgICAgLmRlZmF1bHRfZndf
cGF0aCA9ICJpbXgvc29mIiwKPiA+ID4gKyAgICAgLmRlZmF1bHRfdHBsZ19wYXRoID0gImlteC9z
b2YtdHBsZyIsCj4gPiA+ICsgICAgIC5ub2NvZGVjX2Z3X2ZpbGVuYW1lID0gInNvZi1pbXg4LnJp
IiwKPiA+ID4gKyAgICAgLm5vY29kZWNfdHBsZ19maWxlbmFtZSA9ICJzb2YtaW14OC1ub2NvZGVj
LnRwbGciLAo+ID4gPiArICAgICAub3BzID0gJnNvZl9pbXg4X29wcywKPiA+ID4gK307Cj4gPiA+
ICsjZW5kaWYKPiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHNv
Zl9kdF9wbSA9IHsKPiA+ID4gKyAgICAgU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMoc25kX3NvZl9z
dXNwZW5kLCBzbmRfc29mX3Jlc3VtZSkKPiA+ID4gKyAgICAgU0VUX1JVTlRJTUVfUE1fT1BTKHNu
ZF9zb2ZfcnVudGltZV9zdXNwZW5kLCBzbmRfc29mX3J1bnRpbWVfcmVzdW1lLAo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgTlVMTCkKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gK3N0YXRp
YyB2b2lkIHNvZl9kdF9wcm9iZV9jb21wbGV0ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiA+ICt7
Cj4gPiA+ICsgICAgIC8qIGFsbG93IHJ1bnRpbWVfcG0gKi8KPiA+ID4gKyAgICAgcG1fcnVudGlt
ZV9zZXRfYXV0b3N1c3BlbmRfZGVsYXkoZGV2LCBTTkRfU09GX1NVU1BFTkRfREVMQVlfTVMpOwo+
ID4gPiArICAgICBwbV9ydW50aW1lX3VzZV9hdXRvc3VzcGVuZChkZXYpOwo+ID4gPiArICAgICBw
bV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgaW50
IHNvZl9kdF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiArewo+ID4g
PiArICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gPiArICAgICBjb25z
dCBzdHJ1Y3Qgc29mX2Rldl9kZXNjICpkZXNjOwo+ID4gPiArICAgICAvKlRPRE86IGNyZWF0ZSBh
IGdlbmVyaWMgc25kX3NvY194eHhfbWFjaCAqLwo+ID4gPiArICAgICBzdHJ1Y3Qgc25kX3NvY19h
Y3BpX21hY2ggKm1hY2g7Cj4gPgo+ID4gSSB3b25kZXIgaWYgeW91IHJlYWxseSBuZWVkIHRvIHVz
ZSB0aGUgc2FtZSBzdHJ1Y3R1cmVzLiBGb3IgSW50ZWwgd2UgZ2V0Cj4gPiBhYnNvbHV0ZWx5IHpl
cm8gaW5mbyBmcm9tIHRoZSBmaXJtd2FyZSBzbyByZWx5IG9uIGFuIEFDUEkgY29kZWMgSUQgYXMg
YQo+ID4ga2V5IHRvIGZpbmQgaW5mb3JtYXRpb24gb24gd2hpY2ggZmlybXdhcmUgYW5kIHRvcG9s
b2d5IHRvIHVzZSwgYW5kIHdoaWNoCj4gPiBtYWNoaW5lIGRyaXZlciB0byBsb2FkLiBZb3UgY291
bGQgaGF2ZSBhbGwgdGhpcyBpbmZvcm1hdGlvbiBpbiBhIERUIGJsb2I/Cj4KPiBZZXMuIEkgc2Vl
IHlvdXIgcG9pbnQuIEkgd2lsbCBzdGlsbCBuZWVkIHRvIG1ha2UgYSBnZW5lcmljIHN0cnVjdHVy
ZSBmb3IKPiBzbmRfc29jX2FjcGlfbWFjaCBzbyB0aGF0IGV2ZXJ5b25lIGNhbiB1c2Ugc29mX25v
Y29kZWNfc2V0dXAgZnVuY3Rpb24uCj4KPiBNYXliZSBzb21ldGhpbmcgbGlrZSB0aGlzOgo+Cj4g
c3RydWN0IHNuZF9zb2NfbWFjaCB7Cj4gICB1bmlvbiB7Cj4gICBzdHJ1Y3Qgc25kX3NvY19hY3Bp
X21hY2ggYWNwaV9tYWNoOwo+ICAgc3RydWN0IHNuZF9zb2Nfb2ZfbWFjaCBvZl9tYWNoOwo+ICAg
fQo+IH07Cj4KPiBhbmQgdGhlbiBjaGFuZ2UgdGhlIHByb3RvdHlwZSBvZiBzb2Zfbm9jb2RlY19z
ZXR1cC4KCkhpIFBpZXJyZSwKCkkgZml4ZWQgYWxsIHRoZSBjb21tZW50cyBleGNlcHQgdGhlIG9u
ZSBhYm92ZS4gUmVwbGFjaW5nIHNuZF9zb2NfYWNwaV9tYWNoCndpdGggYSBnZW5lcmljIHNuZF9z
b2NfbWFjaCBpcyBub3QgdHJpdmlhbCB0YXNrLgoKSSB3b25kZXIgaWYgaXQgaXMgYWNjZXB0YWJs
ZSB0byBnZXQgdGhlIGluaXRpYWwgcGF0Y2hlcyBhcyB0aGV5IGFyZQpub3cgYW5kIGxhdGVyIHN3
aXRjaCB0bwpnZW5lcmljIEFDUEkvT0YgYWJzdHJhY3Rpb24uCgpBc2tpbmcgdGhpcyBiZWNhdXNl
IGZvciB0aGUgbW9tZW50IG9uIHRoZSBpLk1YIHNpZGUgSSBoYXZlIG9ubHkKaW1wbGVtZW50ZWQg
bm8gY29kZWMKdmVyc2lvbiBhbmQgd2UgZG9uJ3QgcHJvYmUgYW55IG9mIHRoZSBtYWNoaW5lIGRy
aXZlcnMgd2UgaGF2ZS4KClNvLCB0aGVyZSBpcyB0aGlzIG9ubHkgb25lIG1lbWJlciBvZiBzbmRf
c29jX2FjcGlfbWFjaCB0aGF0IGlteAp2ZXJzaW9uIGlzIG1ha2luZyB1c2Ugb2Y6CgogIG1hY2gt
PmRydl9uYW1lID0gInNvZi1ub2NvZGVjIjsKClRoYXQncyBhbGwuCgpJIHRoaW5rIHRoZSBjaGFu
Z2UgYXMgaXQgaXMgbm93IGlzIHZlcnkgY2xlYW4gYW5kIG5vbi1pbnRydXNpdmUuIExhdGVyCndl
IHdpbGwgZ2V0IG9wdGlvbnMgdG8KcmVhZCBmaXJtd2FyZSBuYW1lIGFuZCBzdHVmZiBmcm9tIERU
LgoKQW55aG93LCBJIGRvbid0IHRoaW5rIHdlIGNhbiBnZXQgcmlkIG9mIHNuZF9kZXZfZGVzYyBz
dHJ1Y3R1cmUgb24KaS5NWC4gVGhpcyB3aWxsIGJlIHVzZWQKdG8gc3RvcmUgdGhlIGluZm9ybWF0
aW9uIHJlYWQgZnJvbSBEVDoKCnN0YXRpYyBzdHJ1Y3Qgc29mX2Rldl9kZXNjIHNvZl9vZl9pbXg4
cXhwX2Rlc2MgPSB7CsK7ICAgICAgIC5kZWZhdWx0X2Z3X3BhdGggPSAiaW14L3NvZiIsCsK7ICAg
ICAgIC5kZWZhdWx0X3RwbGdfcGF0aCA9ICJpbXgvc29mLXRwbGciLArCuyAgICAgICAubm9jb2Rl
Y19md19maWxlbmFtZSA9ICJzb2YtaW14OC5yaSIsCsK7ICAgICAgIC5ub2NvZGVjX3RwbGdfZmls
ZW5hbWUgPSAic29mLWlteDgtbm9jb2RlYy50cGxnIiwKwrsgICAgICAgLm9wcyA9ICZzb2ZfaW14
OF9vcHMsCn07CgpGb3IgdGhlIG1vbWVudCB3ZSB3aWxsIG9ubHkgdXNlIHRoZSBkZWZhdWx0IHZh
bHVlcy4KCnRoYW5rcywKRGFuaWVsLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
