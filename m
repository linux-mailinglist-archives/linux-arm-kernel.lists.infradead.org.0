Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1F878544
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlGJOuLHwfaXHFbaXmcDK/vNrpYEx0YbQ/RVLHSXz3g=; b=Ta2aKoa8j9g5gb
	sbO2H7XyMiQDIoySTnVKEIp+6Q/4R+7py1hU1543gKiq24VKbTlvLtAk58Vz9T/4zWl9QbEYeORWo
	5dGat6q3zQNXCqe+MkWci9OwZb45RGqe4YxxCfTyc0bDaMQIVlYZSNKNc9K5bI2T7ONFaCwV5A2ip
	cZ5jD3omBkOK8vHR36JdzORW5FO51OYq17HFd1rdt731PA6ZB368GjaQlnbh0G0qdM6P7qpB9lT95
	dxYobd75lSV6cTyEr7L2LX2/9V/AHQtMNJYrZBKB05wBfqrhPJyznNokyWFM/L3wnC/N16A2Ojsuw
	U3yh8pCXHtm78L2i6tdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzWE-0001m0-M8; Mon, 29 Jul 2019 06:52:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzVP-0001l6-De
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:51:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id x1so10574434wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 23:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v90YPXKI4GUWpeIkXpR1C/gf5jGZt8lyB8cJkCXtAs4=;
 b=HkFo8r+Mhc+dka46pBgHKGgOw300fimW1/wLqx0AmkfjaZpUky+65lpB0YHCCHXq8I
 DNUww9oNMwYxY56VcouIsLPOlKK3SktU6LgDv4UEFjwyqkz2b/P5+ScZt0H3eGTJW3A2
 8003IepoQ+HaHMZ1Z7331VSbRmg8wg2JAvu997kFwUJm9mWpki0eGK7K7n4tLuqI5p29
 m4u99JVqEfPTKWF27b8F+WOXiMZNnnjKinn2mo9MNgxmdPZqH6GC+9vrKUkXfmWWUv+O
 w2BxlKjy43/0WUQNjClkBMCBZb43GasqxlgND/BF43ZnnOjHqHKsfiSduFdo0Ke3XSTB
 1KPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v90YPXKI4GUWpeIkXpR1C/gf5jGZt8lyB8cJkCXtAs4=;
 b=FXZGcjTOkF0U0or9MQGy/xJXNNAmEwzvB8ZI92mJKDdWyacYY0uBJosicSQ3nGyvvc
 H9YBKsfyGySXeL//ONLPQCNqgTyAmRBB0ttS3vmSmXrPrCIfSZ32K6y3jhSyZ25YRN+j
 /jKXxRjU8NR24TbGi16ZqFN60VNlM70mPjh6cgCCSp4UEdlQIIUuWgtbGGMWXcogpAC7
 GEvImiWxISP3Rg3T4JiYXCBX8Fb9LsthHzvVOX1qus9VDwgKY3/WKejEpBeGVbM0ytpB
 TyqxOYxce3cguyaRFIK2K++VYo3NzhoBPQauMnkeqj0H5gcKvmFNC61JmO0La0NWBHWd
 9A8g==
X-Gm-Message-State: APjAAAW5iXj/LeIlfyYOfuAmGRdaDYwE40yyxPJB0H9rwwO5OcDYYOKO
 3HBSIiw+6q3dOXfdY4s5LdOwV5Popq0N932Dz+U=
X-Google-Smtp-Source: APXvYqyv4uaMyeWcmvjY2UgFAZuoyar5QPXZqVXSg2irz44SilVKKkvVl6fLEdJb4ibwa0xYbImEpjtIbRtvw/3pXqY=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr44289431wrx.196.1564383092966; 
 Sun, 28 Jul 2019 23:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
 <20190727161736.4dkfqgwftre67v56@fsr-ub1664-175>
 <DB3PR0402MB391600891BA75DFFA9674058F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391600891BA75DFFA9674058F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 29 Jul 2019 09:51:21 +0300
Message-ID: <CAEnQRZB6tmYFA8wwh0Fm49LTTDuCLq-SWVfrcUkRWWBo=0U13w@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_235135_576201_CC3CCDC1 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgNDoyOSBBTSBBbnNvbiBIdWFuZyA8YW5zb24uaHVhbmdA
bnhwLmNvbT4gd3JvdGU6Cj4KPiBIaSwgQWJlbC9EYW5pZWwKPgo+ID4gT24gMTktMDctMjcgMDk6
MzM6MTAsIERhbmllbCBCYWx1dGEgd3JvdGU6Cj4gPiA+IE9uIFNhdCwgSnVsIDI3LCAyMDE5IGF0
IDk6MTkgQU0gQW5zb24gSHVhbmcgPGFuc29uLmh1YW5nQG54cC5jb20+Cj4gPiB3cm90ZToKPiA+
ID4gPgo+ID4gPiA+IEhpLCBEYW5pZWwKPiA+ID4gPgo+ID4gPiA+ID4gU3ViamVjdDogUmU6IFtQ
QVRDSCA1LzZdIGNsazogaW14OG1xOiBSZW1vdmUgQ0xLX0lTX0NSSVRJQ0FMIGZsYWcKPiA+ID4g
PiA+IGZvciBJTVg4TVFfQ0xLX1RNVV9ST09UCj4gPiA+ID4gPgo+ID4gPiA+ID4gSGkgYWxsLAo+
ID4gPiA+ID4KPiA+ID4gPiA+IGxhdGVzdCBsaW51eC1uZXh0IGhhbmdzIGF0IGJvb3QuCj4gPiA+
ID4gPgo+ID4gPiA+ID4gY29tbWl0IGZkZTUwYjk2YmU4MjFhYzk2NzNhN2UwMDg0N2NjNDYwNWJk
ODhmMzQgKEhFQUQgLT4KPiA+IG1hc3RlciwgdGFnOgo+ID4gPiA+ID4gbmV4dC0yMDE5MDcyNiwg
b3JpZ2luL21hc3Rlciwgb3JpZ2luL0hFQUQpCj4gPiA+ID4gPiBBdXRob3I6IFN0ZXBoZW4gUm90
aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pgo+ID4gPiA+ID4gRGF0ZTogICBGcmkgSnVsIDI2
IDE1OjE4OjAyIDIwMTkgKzEwMDAKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgICAgQWRkIGxpbnV4LW5l
eHQgc3BlY2lmaWMgZmlsZXMgZm9yIDIwMTkwNzI2Cj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgIFNp
Z25lZC1vZmYtYnk6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pgo+ID4g
PiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIGtub3cgdGhpcyBpcyBjcmF6eSBidXQgcmV2ZXJ0
aW5nIGNvbW1pdDoKPiA+ID4gPiA+Cj4gPiA+ID4gPiBjb21taXQgNDMxYmRkMWRmNDhlZTI4OTZl
YTk5ODBkOTE1M2UzYWVhZjBjODFlZgo+ID4gKHJlZnMvYmlzZWN0L2JhZCkKPiA+ID4gPiA+IEF1
dGhvcjogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4gPiA+ID4gPiBEYXRlOiAg
IEZyaSBKdWwgNSAxMjo1NjoxMSAyMDE5ICswODAwCj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgIGNs
azogaW14OG1xOiBSZW1vdmUgQ0xLX0lTX0NSSVRJQ0FMIGZsYWcgZm9yCj4gPiA+ID4gPiBJTVg4
TVFfQ0xLX1RNVV9ST09UCj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgIElNWDhNUV9DTEtfVE1VX1JP
T1QgaXMgT05MWSB1c2VkIGZvciB0aGVybWFsIG1vZHVsZSwgdGhlCj4gPiBkcml2ZXIKPiA+ID4g
PiA+ICAgICBzaG91bGQgbWFuYWdlIHRoaXMgY2xvY2ssIHNvIG5vIG5lZWQgdG8gaGF2ZSBDTEtf
SVNfQ1JJVElDQUwgZmxhZwo+ID4gPiA+ID4gICAgIHNldC4KPiA+ID4gPiA+Cj4gPiA+ID4gPgo+
ID4gPiA+ID4KPiA+ID4gPiA+IG1ha2VzIHRoZSBib290IHdvcmsgYWdhaW4uCj4gPiA+ID4gPgo+
ID4gPiA+ID4gQW55IGlkZWE/Cj4gPiA+ID4KPiA+ID4gPiBJIGp1c3QgZm91bmQgaWYgZGlzYWJs
aW5nIFNETUExLCB0aGVuIGtlcm5lbCBjYW4gYm9vdCB1cCwgaXQgZG9lcwo+ID4gPiA+IE5PVCBt
YWtlIHNlbnNlIFRNVSBjbG9jayBpcyByZWxhdGVkIHRvIFNETUExLCBJIHdpbGwgY2hlY2sgd2l0
aCBkZXNpZ24KPiA+IGFuZCBnZXQgYmFjayB0byB5b3Ugc29vbi4KPiA+ID4gPgo+ID4gPgo+ID4g
PiBIaSBBbnNvbiwKPiA+ID4KPiA+ID4gQXBwbHlpbmcgQWJlbCdzIHBhdGNoOgo+ID4gPgo+ID4g
PiBjb21taXQgODgxNmM0N2RiNmE4MmY1NWJiNGQ2NGY2MmZkOWRkM2FmNjgwZjBlNCAoSEVBRCAt
PiBtYXN0ZXIpCj4gPiA+IEF1dGhvcjogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4KPiA+
ID4gRGF0ZTogICBUdWUgSnVuIDI1IDEyOjAxOjU2IDIwMTkgKzAzMDAKPiA+ID4KPiA+ID4gICAg
IGNsazogaW14OG1xOiBNYXJrIEFIQiBjbG9jayBhcyBjcml0aWNhbAo+ID4gPgo+ID4gPiAgICAg
S2VlcCB0aGUgQUhCIGNsb2NrIGFsd2F5cyBvbiBzaW5jZSB0aGVyZSBpcyBubyBkcml2ZXIgdG8g
Y29udHJvbCBpdCBhbmQKPiA+ID4gICAgIGFsbCB0aGUgb3RoZXIgY2xvY2tzIHRoYXQgdXNlIGl0
IGFzIHBhcmVudCByZWx5IG9uIGl0IGJlaW5nIGFsd2F5cyBlbmFibGVkLgo+ID4gPgo+ID4gPgo+
ID4gPgo+ID4gPiBUaGUga2VybmVsIGJvb3RzIHVwIGFnYWluLgo+ID4gPgo+ID4gPiBJdCBtYWtl
IHNvbWUgc2Vuc2UuIEkgZG9uJ3QgdW5kZXJzdGFuZCB0aG91Z2ggd2h5IGhhdmluZwo+ID4gPiBJ
TVg4TVFfQ0xLX1RNVV9ST09UIGFzIGNyaXRpY2FsIGFsc28gInVuaGFuZ3MiIHRoZSBrZXJuZWwu
Cj4gPiA+Cj4gPgo+ID4gT0ssIHNvIHRoaXMgaXMgaG93IGl0IHdvcmtzLgo+ID4KPiA+IEJ5IHJl
bW92aW5nIHRoZSBjcml0aWNhbCBmbGFnIGZyb20gVE1VLCB0aGUgQUhCIGRvZXNuJ3Qgc3RheSBh
bHdheXMgb24uCj4gPiBXaXRoIG15IHBhdGNoIHRoZSBBSEIgaXMgbWFya2VkIGFzIGNyaXRpY2Fs
IGFuZCB0aGVyZWZvcmUgc3RheXMgb24uCj4gPgo+ID4gVGhlIHNkbWExX2NsayBoYXMgYXMgcGFy
ZW50IHRoZSBpcGdfcm9vdCB3aGljaCBpbiB0dXJuIGhhcyBhcyBwYXJlbnQgdGhlCj4gPiBhaGIg
Y2xvY2suIEFuZCBJIHRoaW5rIHdoYXQgaGFwcGVucyBpcyBzb21lIHJlYWQgZnJvbSB0aGUgc2Rt
YSByZWdpc3RlcnMKPiA+IGhhbmdzIGJlY2F1c2UsIGZvciB3aGF0ZXZlciByZWFzb24sIGVuYWJs
aW5nIHRoZSBzZG1hMV9jbGsgZG9lc24ndAo+ID4gcHJvcGFnYXRlIHRvIGVuYWJsZSB0aGUgYWhi
IGNsb2NrLiBJIG1pZ2h0IGJlIHdyb25nIHRob3VnaC4KPiA+Cj4KPiBJIGNhbiBleHBsYWluIHdo
eSBBYmVsJ3MgcGF0Y2ggY2FuIGZpeCB0aGlzIGlzc3VlLCB0aGUgQUhCIGNsb2NrIGlzIGEgTVVT
VAo+IGFsd2F5cyBPTiBmb3Igc3lzdGVtIGJ1cywgd2hpbGUgaXQgZG9lcyBOT1QgaGF2ZSBDTEtf
SVNfQ1JJVElDQUwgZmxhZyBzZXQgZm9yIG5vdywKPiB3aGVuIFNETUExIGlzIHByb2JlZCwgaXQg
d2lsbCBlbmFibGUgaXRzIGNsb2NrLCBhbmQgdGhlIGNsayBwYXRoIGlzIHNkbWExX2Nsay0+aXBn
X3Jvb3QtPmFoYiwKPiBhZnRlciBTRE1BMSBwcm9iZWQgZG9uZSwgaXQgd2lsbCBkaXNhYmxlIGl0
cyBjbG9jayBzaW5jZSBubyBvbmUgdXNlIGl0LCBhbmQgaXQgd2lsbCB0cmlnZ2VyCj4gdGhlIGFo
YiBjbG9jayB0byBiZSBPRkYsIGFzIGl0cyB1c2Vjb3VudCBpcyBhZGRlZCBieSAxIHdoZW4gcHJv
YmUgYW5kIGRlY3JlYXNlZCBieSAxIGFmdGVyCj4gU0RNQTEgcHJvYmUgZG9uZSwgc28gdXNlY291
bnQ9MCB3aWxsIHRyaWdnZXIgQUhCIGNsb2NrIHRvIGJlIE9GRi4KPgo+IFNvIEkgdGhpbmsgdGhl
IGJlc3Qgc29sdXRpb24gc2hvdWxkIGJlIGFwcGx5aW5nIEFiZWwncyBwYXRjaCBhcyB5b3UgbWVu
dGlvbmVkIHVwcGVyLCB0aGUgVE1VCj4gY2xvY2sgcGF0Y2ggaXMgTk9UIHRoZSByb290IGNhdXNl
LCBpdCBqdXN0IHRyaWdnZXJzIHRoaXMgaXNzdWUgYWNjaWRlbnRseeKYuQo+Cj4gQnV0IEkgc2F3
IEFiZWwncyBBSEIgcGF0Y2ggaXMgc3RpbGwgdW5kZXIgZGlzY3Vzc2lvbiwgc28gSSB0aGluayB3
ZSBuZWVkIHRvIHNwZWVkIGl0IHVwIGFuZCBtYWtlCj4ga2VybmVsIGJvb3QgdXAgd29yayBmb3Ig
ZGV2ZWxvcG1lbnQuIEFIQi9JUEcgYXJlIGFsd2F5cyBjcml0aWNhbCBmb3IgaS5NWCBTb0NzLgoK
VGhhbmtzIEFuc29uLAoKWW91ciBleHBsYW5hdGlvbiBtYWtlcyBhIGxvdCBvZiBzZW5zZS4gV2Ug
d2lsbCB0YWtlIGNhcmUgdG9kYXkgb2YgQWJlbCdzIHBhdGNoLgpXaGF0IGRvIHlvdSB0aGluayBh
Ym91dCBGYWJpbydzIHBhdGNoPyBJIGFsc28gdGhpbmsgdGhpcyBpcyBhIHZhbGlkIHBhdGNoOgoK
aHR0cDovL2NvZGUuYnVsaXgub3JnL3BkODhqcC04MTIzODEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
