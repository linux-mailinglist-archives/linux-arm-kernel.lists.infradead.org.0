Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCEA17BCCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ/DAB8oLNHeluZuhhhbWhZFqUSOTikCTJ+TMEaNzoc=; b=Ew0kWEGBYgdmF1
	u4dK3b8/KMnPcSOdt++1QI+0lVcWiZ+T/ZFrbrUdqfFidk6OtGf3D8t5QK+1VaTdGS7UED57O54CI
	8pRN9Tsy3/re3/eNlqV80KDuaFnYBFKgSxsEuucnibCAJ2seQwz4GjX5oEp1s/1Rfmg0XmG6r3G3x
	fiXVVNcr48yNxmHaKUh2ovDPG0B1msNLuif+Du47A/IYTLgaWmKxIAfo4eDId6AY13XfIogK5TZi3
	nRydtxsOvEoRGxYpAakYX5AcT9eNSTp1BcAFtLWbncMouPsy1uwalC5jq1H+uUICwZCiPAzkhvViU
	M+ezb1FdhgwKx3XAg2ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACAN-0001Id-Vh; Fri, 06 Mar 2020 12:33:23 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACAG-0001Hu-EX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:33:18 +0000
Received: by mail-qk1-x742.google.com with SMTP id e11so2062417qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 04:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8jme23MILbS+eEi/mucEfUohC7POgRPBqp0gcQEH/IE=;
 b=xIv9xUeUtBuT7AeM6fG/sie44A14iRH6e5e3eKDBgdda7spKXVwKn/1WwVmuU1uuV8
 DrU0xsBSkqYXoFLEqNd+XAqmcnTMQ6QHekzp8Ru0+urbvSqC8lZ3NKtdYLCtApdQFqQa
 rO0SqXaslSzrTAMgZm4KNuVcoWOl9pOWYBzPVEXqREon5t23S67nZ1igNzt8RprdOjVF
 sWOJOTBUAnBNul7O/aqQ98AKTZjVv3iJoB3S5ubcsCQtRPT3g2tUR0zyrg952xQE/IoD
 cph0urfOlDSmQveRL1upLqXTMHXQps3z4UUjzfpp6gW5zX6sx5Lfxi15bVLg2hR5kiLa
 tDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8jme23MILbS+eEi/mucEfUohC7POgRPBqp0gcQEH/IE=;
 b=jCP45g8G9Q24mtGAtZM+Ve2hLTZfy05t0IROQPYrc+mX0Np/abJMYp8kygSSrJfPYn
 8hyHyfG5j6gVCntodnzvI6ikrNJN/eM4xZae1Yrbh/FBgGwm7Xg+qch9yE88Hxd/D3sI
 KLf12lL3bF7fukt5oOt17Dgu4fgaCd+HjkkGk9SsxKytHjhBn0J7/EpskNORIuDfRXoO
 IV4fU46N6vl6gpboQeLMvN+Y3jnQsV2dTDFUZ8m7fQfLxkYI8O08+WULTalChGSZt6xZ
 SS0c3XKAx1su0VI13RxSUm5u5HvwkxHt6SRcPSGBedGtfu7Va12z738mMMofUy04V+tI
 mqRg==
X-Gm-Message-State: ANhLgQ02Se8QSalmrMxXjPy3U/Hkh5gs02G8qCP46B2vzVzPA+H9niuR
 bPcRqwxDfdOuotqUB7iTKgaghafvkMlMZo4sEkA6fA==
X-Google-Smtp-Source: ADFU+vtnTdD+C52gOY5/bNyK5t7jRps/5HdzKnVhovJ39crWl3aPsIOQ9ygdHTvD51dOT3oHDu1anOJNOgnBPbmqZyA=
X-Received: by 2002:a05:620a:14b1:: with SMTP id
 x17mr2582656qkj.219.1583497990177; 
 Fri, 06 Mar 2020 04:33:10 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org> <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
 <20200306100431.GA16541@bogus>
 <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
 <20200306120646.GB44221@bogus>
In-Reply-To: <20200306120646.GB44221@bogus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 6 Mar 2020 13:32:59 +0100
Message-ID: <CA+M3ks7+P=CjvUE28boANhrR6bhzLzyjBLovzWL_LjwL3UqmzQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_043316_490274_2FB50055 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiA2IG1hcnMgMjAyMCDDoCAxMzowNiwgU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFA
YXJtLmNvbT4gYSDDqWNyaXQgOgo+Cj4gT24gRnJpLCBNYXIgMDYsIDIwMjAgYXQgMTE6NDc6NDBB
TSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBMZSB2ZW4uIDYgbWFycyAyMDIw
IMOgIDExOjA0LCBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPiBhIMOpY3JpdCA6
Cj4gPiA+Cj4gPiA+IE9uIEZyaSwgTWFyIDA2LCAyMDIwIGF0IDEwOjI4OjEwQU0gKzAxMDAsIFVs
ZiBIYW5zc29uIHdyb3RlOgo+ID4gPiA+IE9uIFRodSwgNSBNYXIgMjAyMCBhdCAxNzoyMywgU3Vk
ZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPgo+
ID4gPiBbLi4uXQo+ID4gPgo+ID4gPiA+ID4gT0suIFRoZSBvbmx5IHN0YXRlIHRoYXQgY2x1c3Rl
ciBjYW4gZW50ZXIgd2hlbiBDUFVzIGFyZSBpbiBXRkkgYXJlCj4gPiA+ID4gPiBjbHVzdGVyIFdG
SSBhbmQgbW9zdCBoYXJkd2FyZSBjYW4gaGFuZGxlIGl0IGF1dG9tYXRpY2FsbHkuIEkgZG9uJ3Qg
c2VlCj4gPiA+ID4gPiB0aGUgbmVlZCB0byBkbyBhbnkgZXh0cmEgd29yayBmb3IgdGhhdC4KPiA+
ID4gPgo+ID4gPiA+IFRoaXMgaXNuJ3QgYWJvdXQgY2x1c3RlciBXRkksIGJ1dCBhYm91dCBkZWVw
ZXIgY2x1c3RlciBzdGF0ZXMsIHN1Y2ggYXMKPiA+ID4gPiBhIGNsdXN0ZXItY2xvY2stZ2F0ZWQt
c3RhdGUgYW5kIGEgY2x1c3Rlci1wb3dlci1vZmYtc3RhdGUuIEl0J3MgYW4gU1QKPiA+ID4gPiBw
bGF0Zm9ybSwgd2hpY2ggQmVuamFtaW4gaXMgd29ya2luZyBvbi4KPiA+ID4gPgo+ID4gPgo+ID4g
PiBUaGVuIGRlZmluaXRlbHkgc29tZXRoaW5nIGlzIGNvbXBsZXRlbHkgd3JvbmcuIFlvdSBjYW4n
dCBlbnRlciBkZWVwZXIKPiA+ID4gY2x1c3RlciBzdGF0ZXMoY2xvY2stZ2F0ZWQgYW5kIHBvd2Vy
LW9mZiB0byBiZSBzcGVjaWZpYykgd2l0aCBDUFUgaW4KPiA+ID4ganVzdCBXRkkgc3RhdGUuIFNv
LCBpZiB0aGUgYXR0ZW1wdCBoZXJlIGlzIHRvIGVudGVyIHRob3NlIHN0YXRlcywgSQo+ID4gPiBk
aXNhZ3JlZSB3aXRoIHRoZSBjaGFuZ2UuCj4gPiA+Cj4gPiA+IEJlbmphbWluLCBwbGVhc2Ugc2hh
cmUgdGhlIGNvbXBsZXRlIGhpZXJhcmNoaWNhbCB0b3BvbG9neSBmb3IgeW91ciBwbGF0Zm9ybS4K
PiA+Cj4gPiBUaGUgcGxhdGZvcm0gaXMgc3RtMzJtcDE1NyBTb0Mgd2hpY2ggZW1iZWRkZWQgdHdv
IENvcnRleCBBNyBpbiBvbmUgY2x1c3Rlci4KPgo+IEhhbmcgb24gYSBtaW51dGUsIGlzIHRoaXMg
dGhlIHNhbWUgcGxhdGZvcm0gd2hlcmUgeW91IHdhbnRlZCBoaWdoCj4gcmVzb2x1dGlvbiB0aW1l
ciBhbmQgd2VyZSBoYWNraW5nIG1vdmluZyBkaXJ0eSB0cmlja3MgYXJvdW5kWzFdLiBOb3cgSSB0
aGluawo+IHlvdSBoYXZlIGxhbmRlZCBoZXJlLgoKeWVzIGl0IGhhcyBiZWVuIGZpeGVkIGluIHRo
aXMgY29tbWl0OgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L2FyY2gvYXJtL2tlcm5lbC90aW1lLmM/aD12NS42
LXJjNCZpZD0wMjJlYjhhZThiNWVlOGM1YzgxMzkyM2M2OWI1ZWJiMWU5NjEyYzRjCgo+Cj4gPiBJ
IHdvdWxkIGxpa2UgdG8gYmUgYWJsZSB0byBwdXQgdGhlIHN5c3RlbSBpbiBhIHN0YXRlIHdoZXJl
IGNsb2NrcyBvZiBDUFVzIGFuZAo+ID4gaGFyZHdhcmUgYmxvY2tzIGFyZSBnYXRlZC4gSW4gdGhp
cyBzdGF0ZSBsb2NhbCB0aW1lciBhcmUgb2ZmLgo+Cj4gU3VyZSwgcGxlYXNlIGNyZWF0ZSBhIGRl
ZXBlciBDUFUgc3RhdGUgdGhhbiBXRkkgYW5kIGVudGVyIHNvIHRoYXQgdGhlIENQVQo+IHN0YXRl
IGlzIHNhdmVkIGFuZCByZXN0b3JlZCBjb3JyZWN0bHkuIFdoYXQgaXMgdGhlIHByb2JsZW0gZG9p
bmcgdGhhdCA/CgpUaGlzIHN0YXRlIHN0b3AgdGhlIGNsb2NrcyBmb3IgYWxsIHRoZSBoYXJkd2Fy
ZSBibG9ja3MgYW5kIG5vdCBvbmx5IHRoZSBDUFVzCnNvIHdlIGNhbid0IGdvIG9uIGl0IHdoaWxl
IGRldmljZXMgYXJlbid0IHN1c3BlbmRlZC4KSSBtYXkgaGF2ZSBtaXNzZWQgc29tZXRoaW5nIGJ1
dCBJIGRvbid0IGJlbGlldmUgdGhhdCBJIGNvdWxkIGFkZCB0aGlzIGtpbmQgb2YKY29uZGl0aW9u
cyBpbiBhIGNwdSBpZGxlIHN0YXRlLCByaWdodCA/CkluIHRoaXMgc3RhdGUgSSBuZWVkIHRvIGJl
IGFibGUgdG8gZW5hYmxlIHRoZSB3YWtlIHVwIHNvdXJjZXMgYmVjYXVzZQppdCBpcyB0aGUgb25s
eQpmb3IgaGFyZHdhcmUgYmxvY2sgdXNlZCBhcyBicm9hZGNhc3QgdGltZXIgdG8gd2FrZSB1cCB0
aGUgc3lzdGVtLgoKPgo+ID4gVGhlIHBsYXRmb3JtIHNob3VsZCBiZSBhbGxvd2VkIHRvIGdvIGlu
IHRoaXMgc3RhdGUgd2hlbiB0aGUgZGV2aWNlcwo+ID4gd2l0aGluIHRoZSBwb3dlciBkb21haW4g
YXJlIHBtX3J1bnRpbWVfc3VzcGVuZCBhbmQgdGhlIENQVXMgaW4gV0ZJLgo+Cj4gTm9wZSwgd2Ug
ZG9uJ3Qgc2F2ZSBhbmQgcmVzdG9yZSBzdGF0ZSB3aGVuIHdlIGVudGVyL2V4aXQgV0ZJLiBBbmQg
aGVuY2UKPiB3ZSBjYW4ndCBhbGxvdyBkZWVwZXIgaWRsZSBzdGF0ZXMgaW4gdGhlIGhpZXJhcmNo
eS4gTm8gbW9yZSBkaXNjdXNzaW9uCj4gb24gdGhhdC4KCj4KPiA+IEluIERUIEkgaGF2ZSBvbmUg
c3lzdGVtIHBvd2VyIGRvbWFpbiB3aGVyZSB0aGUgaGFyZHdhcmUgYmxvY2tzIChpMiwKPiA+IHVh
cnQ7IHNwaSwgZXRjLi4pIGFyZSBhdHRhY2hlZCArIGEgcG93ZXIgcGVyIENQVS4KPgo+IFlvdSBy
ZWFsbHkgbmVlZCBhIENQVSBpZGxlIHN0YXRlIGhlcmUuCj4KPiAtLQo+IFJlZ2FyZHMsCj4gU3Vk
ZWVwCj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC9hNDJk
ZDIwNjc3Y2RkZDhkMDllYTkxYTM2OWE0ZTEwYkB3d3cubG9lbi5mci8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
