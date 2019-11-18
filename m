Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33B1100499
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4582H2lxaoU2nTJqb09b8EZ1gfdHVYAhLahV8IUCgiQ=; b=QD3yHyAwq+J85D
	nhyXsB3BrBg9hM7exav9rzU6CJxRALF6gDu48uxDPx8oh4kSISIafQMQsZIoZ/jJZUMMJNfhAahdt
	0sWrFq6HPWfOeqjDBKMm6rOS3CzX/P59sc6vMgWpNjbAD0rmTCJNq85gr6vATieOhpibXSN3u83rl
	rgXUENBM86MkziCiAKanR3WL9c2iZyb1Hxjvk2r3fsqbjyGDmNGfuEuOZFEdI4nHaFmlWJZPE9GSZ
	xIUK/ZgAciknBI+UhhAUdp7AEvjYE5emOin+7oXr+L0p5ui36hOTS9VCbLRJgczNeS6pXyeVI8SSw
	0sbM50B+ekVxOZBsIduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfSZ-000447-Rz; Mon, 18 Nov 2019 11:44:47 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfSR-00042T-Fz
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:44:41 +0000
Received: by mail-io1-xd44.google.com with SMTP id q83so18432875iod.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=00YS9wU/qJok85ES8iPJQuzhcEYI33tD11SH51bcxeg=;
 b=KqQXJdXKRFMYWqjFg5qcQO4ctc/d2TpRdOani/P/No4Od0b4bINQYzmCWYNvQcVf+d
 PZCRLbvgh+K7M5+r7BLX6CDCfO53HqiTbr8GhHJPRWJevLW08f+fVQbv4oTqVQ76two9
 IR4JUlMVuZ0VcPD+JdbLzg1bhYakmoVlf2iHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=00YS9wU/qJok85ES8iPJQuzhcEYI33tD11SH51bcxeg=;
 b=B7zZDdLSCi02Mx34JP9rKybxyDsaUMRhMoajW+NOXzeCyt1A2/D/fAptr6xedWHb9F
 qOOsqc8qctUba7/OJTL9NFK+AkXER4ZQxmqdn2mlzR+d2Vfyd5t9H9HzY9L8aNKhKEtC
 4EN9e/WDFzS4WJk19xQ/IQ3C9aTa0XJIp74c6gyhiKwh32J1MfH7zTZ6iu5s1zwgw675
 GCV+IQXDg1KXQQqQT9H+8M7T2icgT5xOofq9O/sfcyH6U+yXJK8YESoTtrL8yuZ6AJbb
 AmKc2fBLb7leXwSuPVAIL1pmLn67+y6HEbaWJMVF2jbH8U2pU+uu7nnx2tEjjzZfggNb
 P6Cw==
X-Gm-Message-State: APjAAAWgvKWk1mAj13W0wbjpgdSo7oRxLBCR2qFzxeaG7kJ1CpLtBkQo
 G/X2Ty526PeLY+1og7+nXGCy2wUOfPsF+IpnHb/Xtg==
X-Google-Smtp-Source: APXvYqwzw/vwFbWlrZpD891jS+rPQgb5mUumAL70Wti+rBqMpjUTt1Ef42AIFjAULrwLH2d8+nyqPYfVmyfJ9QEszhU=
X-Received: by 2002:a02:634d:: with SMTP id j74mr13203246jac.79.1574077477457; 
 Mon, 18 Nov 2019 03:44:37 -0800 (PST)
MIME-Version: 1.0
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <2226540.xovL9aYQn6@diego>
In-Reply-To: <2226540.xovL9aYQn6@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 18 Nov 2019 17:14:26 +0530
Message-ID: <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_034439_672919_9C168059 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

T24gTW9uLCBOb3YgNCwgMjAxOSBhdCA1OjQyIFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+Cj4gSGkgTWFya3VzLAo+Cj4gQW0gRnJlaXRhZywgMS4gTm92ZW1iZXIg
MjAxOSwgMTc6NTQ6MjMgQ0VUIHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPiA+IEZvciByazMzOTkt
cm9jLXBjIGlzIGEgbWV6emFuaW5lIGJvYXJkIGF2YWlsYWJsZSB0aGF0IGNhcnJpZXMgTS4yIGFu
ZAo+ID4gUE9FIGludGVyZmFjZXMuIFVzZSBpdCB3aXRoIGEgc2VwYXJhdGUgZHRzLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4g
PiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAg
fCAgIDEgKwo+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLW1lenouZHRz
ICB8ICA1MiArKwo+ID4gIC4uLi9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBj
LmR0cyB8IDc1NyArLS0tLS0tLS0tLS0tLS0tLQo+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9jLXBjLmR0c2kgICAgICB8IDc2NyArKysrKysrKysrKysrKysrKysKPiA+ICA0IGZp
bGVzIGNoYW5nZWQsIDgyMSBpbnNlcnRpb25zKCspLCA3NTYgZGVsZXRpb25zKC0pCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1w
Yy1tZXp6LmR0cwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZQo+ID4gaW5kZXggYTk1OTQzNGFkNDZlLi44MGVlOWYxZmM1ZjUgMTAwNjQ0Cj4g
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPiBAQCAtMjgsNiArMjgsNyBA
QCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LW5hbm9waS1uZW80LmR0Ygo+
ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktb3JhbmdlcGkuZHRiCj4g
PiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1wdW1hLWhhaWtvdS5kdGIK
PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvYy1wYy5kdGIKPiA+
ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvYy1wYy1tZXp6LmR0Ygo+
ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jay1waS00LmR0Ygo+
ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jazk2MC5kdGIKPiA+
ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2twcm82NC5kdGIKPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMt
bWV6ei5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMtbWV6
ei5kdHMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmVl
Nzc2NzdkMmNmMgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLW1lenouZHRzCj4gPiBAQCAtMCwwICsxLDUyIEBACj4g
PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gPiArLyoK
PiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTcgVC1DaGlwIEludGVsbGlnZW50IFRlY2hub2xvZ3kg
Q28uLCBMdGQKPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgTWFya3VzIFJlaWNobCA8bS5yZWlj
aGxAZml2ZXRlY2huby5kZT4KPiA+ICsgKi8KPiA+ICsKPiA+ICsvZHRzLXYxLzsKPiA+ICsjaW5j
bHVkZSAicmszMzk5LXJvYy1wYy5kdHNpIgo+ID4gKwo+ID4gKy8gewo+ID4gKyAgICAgbW9kZWwg
PSAiRmlyZWZseSBST0MtUkszMzk5LVBDIE1lenphbmluZSBCb2FyZCI7Cj4gPiArICAgICBjb21w
YXRpYmxlID0gImZpcmVmbHkscm9jLXJrMzM5OS1wYyIsICJyb2NrY2hpcCxyazMzOTkiOwo+Cj4g
ZGlmZmVyZW50IGJvYXJkIHdpdGggc2FtZSBjb21wYXRpYmxlIGlzbid0IHBvc3NpYmxlLCBzbwo+
IHlvdSdsbCBuZWVkIGEgbmV3IGNvbXBhdGlibGUgZm9yIGl0IGFuZCBhZGQgYSBuZXcgbGluZSB0
bwo+IHRoZSByb2MtcGMgZW50cnkgaW4KPiAgICAgICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Cj4gRWl0aGVyIHlvdSBzZWUgaXQgYXMKPiAt
IGEgYm9hcmQgKyBoYXQsIHVzaW5nIGR0IG92ZXJsYXkgYW5kIHNhbWUgY29tcGF0aWJsZQo+IC0g
YSBjb21wbGV0ZWx5IHNlcGFyYXRlIGJvYXJkLCB3aGljaCBuZWVkcyBhIHNlcGFyYXRlCj4gICBj
b21wYXRpYmxlIGFzIHdlbGwKPgo+IEFuZCBhcyBkaXNjdXNzZWQgaW4gdGhlIHByZXZpb3VzIHRo
cmVhZAo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1yb2NrY2hp
cC8yMDE5LU5vdmVtYmVyLzAyNzU5Mi5odG1sCj4gYnV0IGFsc28gaW4gSmFnYW4ncyByZXNwb25z
ZSB0aGF0IHJlYWxseSBpcyBzb21laG93IGEgZ3JleSBhcmVhCj4gZm9yIHNvbWV0aGluZyByZWxh
dGl2ZWx5IHN0YXRpYyBhcyB0aGUgTS4yIGV4dGVuc2lvbi4KClNvcnJ5IGZvciBsYXRlIHJlc3Bv
bnNlIG9uIHRoaXMuIEkgc3RpbGwgdGhpbmsgdGhhdCB0aGUgIm92ZXJsYXkgd291bGQKYmUgYSBi
ZXR0ZXIgc3VpdGUiIHRoYW4gaGF2aW5nIHNlcGFyYXRlIGR0cywgc2luY2UgaXQgaXMgSEFUIHdo
aWNoIGlzCm9wdGlvbmFsIHRvIGluc2VydCBhbmQgaGF2ZSBwb3NzaWJpbGl0eSBvZiBoYXZpbmcg
YW5vdGhlciBIQVQgaWYgaXQKcmVhbGx5IGZpdCBpbnRvIGl0LgoKQ29tbWVudHM/CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
