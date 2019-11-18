Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80F010054D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpWhBWDSVWZhTXmGiz7wxfQ+bw7UZiYm8KtFWk7maTQ=; b=TdHa1BkgB9gJRM
	q7xy2Q45gqEyFWJ6JF6Br/TVRAQnWAtOh9mtUU/J9Bw80VavDMNzhxDLFgttL58FUCcB4qn9iXncK
	kRghv287zkbaHe377TfwV0i0Tm3w8QBxNPyKir8QDIOT65VhRnG1fyX0Bs1IrvY6THIjMYbUXYQta
	UVIwnCUyXpuBH2Fd9r4KzyPfWhlf13zuJj1Wv/q90+qRovrR2PUmHH7rVrStqEkxokvZs6bCKvhgP
	iFBUaNaf02gSrO9p3pKf4Dt3DbXngZ1zhhY0MmH8b3ekSQq8ERzoGsgzFv6COqJW3XHZ+Z1xjhpdQ
	9Mn3Y9pd8osNrHdh3Ugw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfo1-0006m3-O7; Mon, 18 Nov 2019 12:06:57 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfni-0006kG-A3
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 12:06:40 +0000
Received: by mail-io1-xd43.google.com with SMTP id v17so7298841iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 04:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8TLisz4aQCnpH1nQJckHE/4DqGlnITwdG2aeA9BzSJs=;
 b=gZ7SVayZrKBCeOGp38XT5sNAwqCBviXOxTOd4JvGIo36QGAl4SONzk+keg76DEGQFt
 rbGlW82SbUAq1Mp4/Q6GjBUEymoRL81VYGYZsBSIWgtZozyZkiTTsZRVGG5bBPfkZjYS
 MrCrtrDvPjIAgo4JLd4xgbBiXx5dcTN2hgJpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8TLisz4aQCnpH1nQJckHE/4DqGlnITwdG2aeA9BzSJs=;
 b=pNGnpvGzasG/KZLNtYRJHMAKKutbddyo2L7SzAj2emSzgVaJU5pa/IVidLtzDl191m
 OFechB60u65s1kdEU/bNHrfJ8oB+SBGQG+P/I/B5Ac+FaB5SHfLAivGWwiBVRimU/9EQ
 a2hri3k0UPzne1pvlGw7RTXNnf4wN4+BUpqB7BUMAlMdJ9ZbZD96CqmJU0+NggBsuWG1
 6ZFjurFdy2vJDSazDn0glEvH+vgmmmagS7Cbd96FK1QIY/o/cubIvDhLd32pjbuRlChB
 yn+MC1L1E37/dXKGsPlabjVjMJz87BKF44d1A96n2ZZwapRJPDkMy0WsXWItTPOReQaQ
 hI+Q==
X-Gm-Message-State: APjAAAXtOVOkxvBLtls3X2hNN2IZ+jtN3e34f6MlJy2lIAZDjw+Cp6su
 dtT+eWu77PAMfKclHqDSuZrt9rerRVT0WwEw/cp4TA==
X-Google-Smtp-Source: APXvYqys4JE1pYdi2/ZW/BnxTIzLZlCdlEMM0lASAVLbjlfYoUW0ZPNQFziLMGhFaxY6+CfD1ejsl+lTHAIrxXQaklk=
X-Received: by 2002:a6b:7111:: with SMTP id q17mr13055339iog.28.1574078797070; 
 Mon, 18 Nov 2019 04:06:37 -0800 (PST)
MIME-Version: 1.0
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
 <62bfaad5-cbd6-efbd-426b-3da681fcd160@fivetechno.de>
 <17111474.kvkBZtc6MS@diego>
In-Reply-To: <17111474.kvkBZtc6MS@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 18 Nov 2019 17:36:26 +0530
Message-ID: <CAMty3ZAaOd2GVGqqw0pASbcaScH7QPWXN5rxkqUshdRAq6Oz5Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_040638_367342_4FD736BF 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgNTozMSBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1vbnRhZywgMTguIE5vdmVtYmVyIDIwMTksIDEyOjU3OjE2
IENFVCBzY2hyaWViIE1hcmt1cyBSZWljaGw6Cj4gPiBIaSBKYWdhbiwKPiA+Cj4gPiBBbSAxOC4x
MS4xOSB1bSAxMjo0NCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiA+IE9uIE1vbiwgTm92IDQsIDIw
MTkgYXQgNTo0MiBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+
ID4+Cj4gPiA+PiBIaSBNYXJrdXMsCj4gPiA+Pgo+ID4gPj4gQW0gRnJlaXRhZywgMS4gTm92ZW1i
ZXIgMjAxOSwgMTc6NTQ6MjMgQ0VUIHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPiA+ID4+ID4gRm9y
IHJrMzM5OS1yb2MtcGMgaXMgYSBtZXp6YW5pbmUgYm9hcmQgYXZhaWxhYmxlIHRoYXQgY2Fycmll
cyBNLjIgYW5kCj4gPiA+PiA+IFBPRSBpbnRlcmZhY2VzLiBVc2UgaXQgd2l0aCBhIHNlcGFyYXRl
IGR0cy4KPiA+ID4+ID4KPiA+ID4+ID4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFJlaWNobCA8bS5y
ZWljaGxAZml2ZXRlY2huby5kZT4KPiA+ID4+ID4gLS0tCj4gPiA+PiA+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ID4gPj4gPiAgLi4uL2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMtbWV6ei5kdHMgIHwgIDUyICsrCj4gPiA+PiA+
ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHMgfCA3NTcgKy0t
LS0tLS0tLS0tLS0tLS0KPiA+ID4+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9j
LXBjLmR0c2kgICAgICB8IDc2NyArKysrKysrKysrKysrKysrKysKPiA+ID4+ID4gIDQgZmlsZXMg
Y2hhbmdlZCwgODIxIGluc2VydGlvbnMoKyksIDc1NiBkZWxldGlvbnMoLSkKPiA+ID4+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2Mt
cGMtbWV6ei5kdHMKPiA+ID4+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+ID4gPj4gPgo+ID4gPj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4+ID4gaW5kZXggYTk1OTQzNGFkNDZlLi44
MGVlOWYxZmM1ZjUgMTAwNjQ0Cj4gPiA+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvTWFrZWZpbGUKPiA+ID4+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZQo+ID4gPj4gPiBAQCAtMjgsNiArMjgsNyBAQCBkdGItJChDT05GSUdfQVJDSF9S
T0NLQ0hJUCkgKz0gcmszMzk5LW5hbm9waS1uZW80LmR0Ygo+ID4gPj4gPiAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1vcmFuZ2VwaS5kdGIKPiA+ID4+ID4gIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcHVtYS1oYWlrb3UuZHRiCj4gPiA+PiA+ICBk
dGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvYy1wYy5kdGIKPiA+ID4+ID4g
K2R0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jLXBjLW1lenouZHRiCj4g
PiA+PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2stcGktNC5k
dGIKPiA+ID4+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jazk2
MC5kdGIKPiA+ID4+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9j
a3BybzY0LmR0Ygo+ID4gPj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLW1lenouZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcm9jLXBjLW1lenouZHRzCj4gPiA+PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
PiA+PiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWU3NzY3N2QyY2YyCj4gPiA+PiA+IC0tLSAvZGV2
L251bGwKPiA+ID4+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9jLXBjLW1lenouZHRzCj4gPiA+PiA+IEBAIC0wLDAgKzEsNTIgQEAKPiA+ID4+ID4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4gPj4gPiArLyoKPiA+
ID4+ID4gKyAqIENvcHlyaWdodCAoYykgMjAxNyBULUNoaXAgSW50ZWxsaWdlbnQgVGVjaG5vbG9n
eSBDby4sIEx0ZAo+ID4gPj4gPiArICogQ29weXJpZ2h0IChjKSAyMDE5IE1hcmt1cyBSZWljaGwg
PG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4gPiA+PiA+ICsgKi8KPiA+ID4+ID4gKwo+ID4gPj4g
PiArL2R0cy12MS87Cj4gPiA+PiA+ICsjaW5jbHVkZSAicmszMzk5LXJvYy1wYy5kdHNpIgo+ID4g
Pj4gPiArCj4gPiA+PiA+ICsvIHsKPiA+ID4+ID4gKyAgICAgbW9kZWwgPSAiRmlyZWZseSBST0Mt
UkszMzk5LVBDIE1lenphbmluZSBCb2FyZCI7Cj4gPiA+PiA+ICsgICAgIGNvbXBhdGlibGUgPSAi
ZmlyZWZseSxyb2MtcmszMzk5LXBjIiwgInJvY2tjaGlwLHJrMzM5OSI7Cj4gPiA+Pgo+ID4gPj4g
ZGlmZmVyZW50IGJvYXJkIHdpdGggc2FtZSBjb21wYXRpYmxlIGlzbid0IHBvc3NpYmxlLCBzbwo+
ID4gPj4geW91J2xsIG5lZWQgYSBuZXcgY29tcGF0aWJsZSBmb3IgaXQgYW5kIGFkZCBhIG5ldyBs
aW5lIHRvCj4gPiA+PiB0aGUgcm9jLXBjIGVudHJ5IGluCj4gPiA+PiAgICAgICAgIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ID4gPj4KPiA+ID4+
IEVpdGhlciB5b3Ugc2VlIGl0IGFzCj4gPiA+PiAtIGEgYm9hcmQgKyBoYXQsIHVzaW5nIGR0IG92
ZXJsYXkgYW5kIHNhbWUgY29tcGF0aWJsZQo+ID4gPj4gLSBhIGNvbXBsZXRlbHkgc2VwYXJhdGUg
Ym9hcmQsIHdoaWNoIG5lZWRzIGEgc2VwYXJhdGUKPiA+ID4+ICAgY29tcGF0aWJsZSBhcyB3ZWxs
Cj4gPiA+Pgo+ID4gPj4gQW5kIGFzIGRpc2N1c3NlZCBpbiB0aGUgcHJldmlvdXMgdGhyZWFkCj4g
PiA+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgtcm9ja2NoaXAv
MjAxOS1Ob3ZlbWJlci8wMjc1OTIuaHRtbAo+ID4gPj4gYnV0IGFsc28gaW4gSmFnYW4ncyByZXNw
b25zZSB0aGF0IHJlYWxseSBpcyBzb21laG93IGEgZ3JleSBhcmVhCj4gPiA+PiBmb3Igc29tZXRo
aW5nIHJlbGF0aXZlbHkgc3RhdGljIGFzIHRoZSBNLjIgZXh0ZW5zaW9uLgo+ID4gPgo+ID4gPiBT
b3JyeSBmb3IgbGF0ZSByZXNwb25zZSBvbiB0aGlzLiBJIHN0aWxsIHRoaW5rIHRoYXQgdGhlICJv
dmVybGF5IHdvdWxkCj4gPiA+IGJlIGEgYmV0dGVyIHN1aXRlIiB0aGFuIGhhdmluZyBzZXBhcmF0
ZSBkdHMsIHNpbmNlIGl0IGlzIEhBVCB3aGljaCBpcwo+ID4gPiBvcHRpb25hbCB0byBpbnNlcnQg
YW5kIGhhdmUgcG9zc2liaWxpdHkgb2YgaGF2aW5nIGFub3RoZXIgSEFUIGlmIGl0Cj4gPiA+IHJl
YWxseSBmaXQgaW50byBpdC4KPiA+ID4KPiA+ID4gQ29tbWVudHM/Cj4gPiBQcmVzZW50bHkgbm8g
b3RoZXIgZXh0ZW5zaW9uIGJvYXJkIGRvZXMgZXhpc3QsIEkgZG9uJ3QgZXhwZWN0IG9uZS4KPiA+
Cj4gPiBJIHVzZSBpdCB3aXRoIHJvb3RmcyBvbiBOVk1FIG9uIHRoZSBtZXp6YW5pbmUgYm9hcmQu
Cj4gPiBJdCBpcyBjb252ZW5pZW50IHRvIGhhdmUgdGhlIE5WTUUgdXAgYmVmb3JlIGdvaW5nIHRv
IHVzZXIgc3BhY2UuCj4KPiBBbmQgdGhhdCBpcyBleGFjdGx5IHRoZSByZWFzb24gd2hpbGUgSSB0
aGluayBpdCdzIHNhbmUgdG8gaGF2ZSB0aGlzCj4gYXMgYSBzZXBhcmF0ZSBib2FyZC4gRm9yIG1v
cmUgY29tbW9uIGhhdHMgd2l0aCByYW5kb20KPiBleHRlbmRlZCBmdW5jdGlvbmFsaXR5IHRoaXMg
bWlnaHQgYmUgZGlmZmVyZW50Lgo+Cj4gQnV0IHBlb3BsZSBhdHRhY2hpbmcgdGhlIG52bWUtImhh
dCIgd2lsbCBpbiBtb3N0IGFsbCBjYXNlcyBkbyBzbyBxdWl0ZQo+IHBlcm1hbmVudGx5IGFzIHdl
bGwgOy0pIC4KCkkgZGlkIHVuZGVyc3RhbmQgdGhpcyBjb21wbGV0ZWx5IGFuZCBJIGRvIGFncmVl
IHRoaXMgcG9pbnQgYW5kIHVzZS1jYXNlLgoKQnV0IHdoYXQgaWYgd2UgaGF2ZSBvdmVybGF5LCBh
bmQgZ2l2ZSB0ZW5kZW5jeSB0byB1c2UgaXQgYXQgYm9vdGxvYWRlcgpsZXZlbCBmb3IgbnZtZS0i
aGF0IiBzbyBpdCBjYW4gc2F0aXNmeSBib3RoIGNvbW1vbiBhbmQgcmFuZG9tIEhBVApmdW5jdGlv
bmFsaXRpZXMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
