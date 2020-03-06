Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3311F17BABA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PxDSDNRDiNE0unV+myRonG1TbA9B3PGFZHZZNJ9fYc=; b=exbnUEUEr4fC8Q
	tIlIvqY+6jQU7BPB0r2qNRTLmW7pDJmGAAnSJrSvBXEZNVyGgvz+EWhmBNS/HznYbQjNLxbSBqzp8
	bbF6bBkQ2YBY8fpP+Bs6F6WZdDnUw4QMAW9dPgCnkDZyvlQUj4H9jAaLTydsCCmwdfqkbaVnReCKz
	vhFMmVGa9/M4URo8guuu2OrBpnly4uAVgtwK1v65zJ3q12ZSsG/g/Sb9uHfYToebn4hQcWSVgmCG8
	FmyXhog0vHMCl32MwknE0ug3uNzV7EDmDfWxel9gX+LdpNhBQyotFOaa4id3ABoOqfN8ePDbADK61
	se1F1UOG58LtB1ICYGTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAWP-0006tm-Km; Fri, 06 Mar 2020 10:48:01 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAWH-0006tI-TC
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:47:55 +0000
Received: by mail-qv1-xf42.google.com with SMTP id bt20so345069qvb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=L9qllgBetj+BEQWfT/OiX2QC0uNgMlThjG4S3HBEVvA=;
 b=bdhXAQ6gl3kdxFEBzTgcym4UaEMZ4lZe1QC4kNndxgcPzc9YZSwXW+SZoXj85K7NXN
 Jg9AmHG5ZpHiJaZ1JJqJuX69h0MBw2IgWMTWKp+qSf1IZ/rckzt0if7mIDkI28SWA8LO
 fjeBrXa93E6v8IS/KwAR5s2VMuHkA9E5YVXvhTd+gtaI+iKNz49+zhfcX4mcgLXr34Nv
 dxEibUj3oE/VBLenqtUBlI7fnSmCRuGcnJjTKYHEi8+jvNiv+AqgZoVzvKKJeNw6/zVd
 zkoSqxnqXbZwV54lkEgYg1sln4OuTWwKgGVYrWk4EMPUoh/cyC7J+603sACdDYtcOSB3
 WiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=L9qllgBetj+BEQWfT/OiX2QC0uNgMlThjG4S3HBEVvA=;
 b=b6UPAzrgjAr6JJomrABcVvTLBu7+k2No2uf9dK0a5F51cj5iBBK2VFw5tA2PT/foxE
 kTlqxdPelefeTJObgVXoTbpS/bBXjaOk+/9FBOAJ95W2jXFJDqikCT1B1svaZ9FrwP16
 K0sVLTFutPEPLyyt6Rd/b4j05hRQjae9OjcQ2Tthbg4hqtHaFB9BQkajyriikK73qioh
 kFeWF1Cjh7eY/QutlWG1Sd9URJwa6y344diO3aZiYABdAqUisv3eqE/fczUMTleeogdq
 h+qDeyqrFyZHJJrpWKAiyQk2/jQ7C9nGYAJX0aeHZIypsh/18g6SgcNGiH2KGjSxfo1w
 TEZA==
X-Gm-Message-State: ANhLgQ2RJtGhr4ZqWKHYBZiDTcKJVuDAkFdQ9ldFE54WwvW8EEyG+wVT
 Vnmftxj5XUu7nArGJ4egHkhM6gBN9R3u6I6DW3qVLg==
X-Google-Smtp-Source: ADFU+vsTn3fA0kraMXMGFlj/616/+NyRO05/rAFKlvewIjoL2RL/94yrpoO1r5hTt6eGiANfTO/TbGs9/ExYxCs1yHM=
X-Received: by 2002:ad4:4861:: with SMTP id u1mr2220560qvy.233.1583491672115; 
 Fri, 06 Mar 2020 02:47:52 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org> <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
 <20200306100431.GA16541@bogus>
In-Reply-To: <20200306100431.GA16541@bogus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 6 Mar 2020 11:47:40 +0100
Message-ID: <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_024754_000531_75759ED4 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
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

TGUgdmVuLiA2IG1hcnMgMjAyMCDDoCAxMTowNCwgU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFA
YXJtLmNvbT4gYSDDqWNyaXQgOgo+Cj4gT24gRnJpLCBNYXIgMDYsIDIwMjAgYXQgMTA6Mjg6MTBB
TSArMDEwMCwgVWxmIEhhbnNzb24gd3JvdGU6Cj4gPiBPbiBUaHUsIDUgTWFyIDIwMjAgYXQgMTc6
MjMsIFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+IHdyb3RlOgo+ID4gPgo+Cj4g
Wy4uLl0KPgo+ID4gPiBPSy4gVGhlIG9ubHkgc3RhdGUgdGhhdCBjbHVzdGVyIGNhbiBlbnRlciB3
aGVuIENQVXMgYXJlIGluIFdGSSBhcmUKPiA+ID4gY2x1c3RlciBXRkkgYW5kIG1vc3QgaGFyZHdh
cmUgY2FuIGhhbmRsZSBpdCBhdXRvbWF0aWNhbGx5LiBJIGRvbid0IHNlZQo+ID4gPiB0aGUgbmVl
ZCB0byBkbyBhbnkgZXh0cmEgd29yayBmb3IgdGhhdC4KPiA+Cj4gPiBUaGlzIGlzbid0IGFib3V0
IGNsdXN0ZXIgV0ZJLCBidXQgYWJvdXQgZGVlcGVyIGNsdXN0ZXIgc3RhdGVzLCBzdWNoIGFzCj4g
PiBhIGNsdXN0ZXItY2xvY2stZ2F0ZWQtc3RhdGUgYW5kIGEgY2x1c3Rlci1wb3dlci1vZmYtc3Rh
dGUuIEl0J3MgYW4gU1QKPiA+IHBsYXRmb3JtLCB3aGljaCBCZW5qYW1pbiBpcyB3b3JraW5nIG9u
Lgo+ID4KPgo+IFRoZW4gZGVmaW5pdGVseSBzb21ldGhpbmcgaXMgY29tcGxldGVseSB3cm9uZy4g
WW91IGNhbid0IGVudGVyIGRlZXBlcgo+IGNsdXN0ZXIgc3RhdGVzKGNsb2NrLWdhdGVkIGFuZCBw
b3dlci1vZmYgdG8gYmUgc3BlY2lmaWMpIHdpdGggQ1BVIGluCj4ganVzdCBXRkkgc3RhdGUuIFNv
LCBpZiB0aGUgYXR0ZW1wdCBoZXJlIGlzIHRvIGVudGVyIHRob3NlIHN0YXRlcywgSQo+IGRpc2Fn
cmVlIHdpdGggdGhlIGNoYW5nZS4KPgo+IEJlbmphbWluLCBwbGVhc2Ugc2hhcmUgdGhlIGNvbXBs
ZXRlIGhpZXJhcmNoaWNhbCB0b3BvbG9neSBmb3IgeW91ciBwbGF0Zm9ybS4KClRoZSBwbGF0Zm9y
bSBpcyBzdG0zMm1wMTU3IFNvQyB3aGljaCBlbWJlZGRlZCB0d28gQ29ydGV4IEE3IGluIG9uZSBj
bHVzdGVyLgpJIHdvdWxkIGxpa2UgdG8gYmUgYWJsZSB0byBwdXQgdGhlIHN5c3RlbSBpbiBhIHN0
YXRlIHdoZXJlIGNsb2NrcyBvZiBDUFVzIGFuZApoYXJkd2FyZSBibG9ja3MgYXJlIGdhdGVkLiBJ
biB0aGlzIHN0YXRlIGxvY2FsIHRpbWVyIGFyZSBvZmYuClRoZSBwbGF0Zm9ybSBzaG91bGQgYmUg
YWxsb3dlZCB0byBnbyBpbiB0aGlzIHN0YXRlIHdoZW4gdGhlIGRldmljZXMKd2l0aGluIHRoZSBw
b3dlcgpkb21haW4gYXJlIHBtX3J1bnRpbWVfc3VzcGVuZCBhbmQgdGhlIENQVXMgaW4gV0ZJLgpJ
biBEVCBJIGhhdmUgb25lIHN5c3RlbSBwb3dlciBkb21haW4gd2hlcmUgdGhlIGhhcmR3YXJlIGJs
b2NrcyAoaTIsCnVhcnQ7IHNwaSwgZXRjLi4pCmFyZSBhdHRhY2hlZCArIGEgcG93ZXIgcGVyIENQ
VS4KCkJlbmphbWluCgo+Cj4gPiA+Cj4gPiA+ID4gVGhlbiwgYWZ0ZXIgd2UgaGF2ZSBjYWxsZWQg
cG1fcnVudGltZV9wdXRfc3luY19zdXNwZW5kKCkgYSBmZXcgbGluZXMKPiA+ID4gPiBhYm92ZSwg
d2UgbWF5IHBvdGVudGlhbGx5IGhhdmUgYSAiZG9tYWluIHN0YXRlIiB0byB1c2UsIGluc3RlYWQg
b2YgdGhlCj4gPiA+ID4gV0ZJIHN0YXRlLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEFyZSB0aGV5IGFu
eSBwbGF0Zm9ybXMgd2l0aCB0aGlzIHBvdGVudGlhbCAiZG9tYWluIHN0YXRlIiB0byB1c2Ugd2l0
aAo+ID4gPiBDUFUgV0ZJLiBJIHdhbnQgdG8gdW5kZXJzdGFuZCB0aGlzIGJldHRlci4KPiA+ID4K
PiA+ID4gPiBJbiB0aGlzIGNhc2UsIGlmIHdlIHdvdWxkIGhhdmUgY2FsbGVkIHBzY2lfZW50ZXJf
c3RhdGUoKSwgdGhhdCB3b3VsZAo+ID4gPiA+IGxlYWQgdXMgdG8gY2FsbGluZyBjcHVfZG9faWRs
ZSgpIGZyb20gdGhlIF9fQ1BVX1BNX0NQVV9JRExFX0VOVEVSKCkKPiA+ID4gPiBtYWNybywgYmVj
dWFzZSBpZHggaXMgemVyby4gSW4gb3RoZXIgd29yZHMsIHRoZSBkb21haW4gc3RhdGUgd291bGQK
PiA+ID4gPiBiZWNvbWUgdW51c2VkLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEZvciBhIGRvbWFpbiBz
dGF0ZSB0byBiZWNvbWUgdW51c2VkIHdpdGggV0ZJLCBpdCBuZWVkcyB0byBiZSBhdmFpbGFibGUK
PiA+ID4gYW5kIEkgYW0gbm90IDEwMCUgc3VyZSBvZiB0aGF0Lgo+ID4KPiA+IFdpdGggdGhlc2Ug
Y2hhbmdlcyBmcm9tIHRoZSBzZXJpZXMsIHdlIGNhbiBmdWxseSBjb25mb3JtIHRvIHRoZQo+ID4g
aGllcmFyY2hpY2FsIERUIGJpbmRpbmdzIGZvciBQU0NJLgo+ID4KPgo+IFRoZW9yZXRpY2FsbHkg
bWF5IGJlLCBidXQgbWF5IG5vdCBjb25maXJtIHRvIHRoZSBoYXJkd2FyZSBzdGF0ZXMuCj4KPiA+
IEkgYW0gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHlvdXIgY29uY2VybiwgaXMgdGhlcmUgYSBjb3N0
IGludm9sdmVkIGJ5Cj4gPiBhcHBseWluZyB0aGlzPwo+ID4KPgo+IFllcyBhcyBtZW50aW9uZWQg
YWJvdmUuCj4KPiAtLQo+IFJlZ2FyZHMsCj4gU3VkZWVwCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
