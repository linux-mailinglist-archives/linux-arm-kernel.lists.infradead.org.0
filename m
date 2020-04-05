Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA4019EC59
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 17:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FblW4JHqrySTXRCFstqAIg2HRjQBk8XFJVSgxVdHBgY=; b=SEbLJHDYTZLFjX
	keVXfLG1pS8pAkez00a8LYegYdEpiDXQUiIHuCQOYaGfiL5nOfX9emQLvw56F1fxm6KbWt/ycN6J7
	MlzWzDYXP/8gdQVLTKhMvTd4xcfY7HmhOSme+aRhF2MVqJLyy+cKE6YVCD1hSN5tggbX725D4CnSj
	Q3DpRjinQ24lfh9CQ4N+pF/HChR7fXzi+fykJk4kb2coEIdl4PBr4qhmUqamqwChB0YIDy9QIQugk
	S4GOYjeTvqtcmVgaISrAmP4KZ7dQcY5zB+MrfoOf//cwMfs86Evu6Q6Uk/Sypi+WJM+D/nAijMIYt
	RtAkFU7sXDM6Ar447FEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL7EO-0004f3-9r; Sun, 05 Apr 2020 15:30:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL7EH-0004ef-II
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 15:30:35 +0000
Received: by mail-io1-xd43.google.com with SMTP id o3so13061591ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 08:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yvEjNWR2BGZ2SH6akSfQFul9qgwv77tPLoJrdQcMpQg=;
 b=Q1HdO4V8WqRn9BOJTAzxFnuKHo80y5XF6qo/nQ3DPYkVBbiVrfG3UMOqC0xBCe68Ag
 jLpuZN4peqFkDZrJtuZ2lLGmTOPggYr7FqteZaMjhAyMhnigBybDchpQ3h2cRrlvCkCQ
 2Uy0WJVdtzncI7qCVGhK89q6iD+HbNXoOOU2qjWx0ouBcwdgNvWDvsHcNVcPqJsMzK5K
 1rkwnN9115YhhN63/f70BpwWfZJdSC/KLSlevLRjbumXjkPfH/Dmhdk1lHlZ/0Wa/vdV
 F5x4ppJ075vTZGJ5sq1gy5gk4hHG/ouUvt6cyflp/vw8gUmW61a5Vlb3HH4u6OTmLNfa
 Eswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yvEjNWR2BGZ2SH6akSfQFul9qgwv77tPLoJrdQcMpQg=;
 b=auPDQ78eKVLNXWzMDemjl4I+JPUeSgc+4+KWS0nYHpAgtfauHmlQ70zyTblFZ1H/xz
 GxNh5TMVgXgBl5XZfZlbg6G9LIl0B7XtZ9gxjnH5XqAu7rQdeb7ffszql7/XGrLe2PpT
 paHy/vFDpuu4/5MQUKo3K2e01PLIipcWPWyTj/shg8De79GBuLuVX0JhZiEyS8Cs12ZI
 xvattCQpHaj1TMRx5VzTiUtb/fb5CREECSLRoEl+C6bE9Fvv/khsNUWK48E3GX+8tqdS
 TpgZJ5pkEA7QW66IC+3nD4NXwQqQFPIyfiqTYE0OYcxS5nNclP3CPvtoXaBErS+ogVO6
 QakQ==
X-Gm-Message-State: AGi0PuaRAdUx5h1AA1jQDj2WD+TgKYMjqYjkMW8KJVxlY4s6vKkSn+wD
 QBoUsQXy96cPx/C0ZgRNP+3K1As+S05yzRfVzbc=
X-Google-Smtp-Source: APiQypKs8y6Vg2KzmMT4g4oZu5wiFa4G/kju8yqlU96SeL7qZ7ELe7MmcVgtpvP5CqJLwjK9A2qIovwpySFpCdeuE3I=
X-Received: by 2002:a5d:9494:: with SMTP id v20mr5060146ioj.101.1586100632475; 
 Sun, 05 Apr 2020 08:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200405104913.22806-1-peron.clem@gmail.com>
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 5 Apr 2020 17:30:21 +0200
Message-ID: <CAJiuCcdEMDJik7jZYkTETF3D_H6Y0OLND46e9wJ2vsTtnrb0rQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] Add support for Allwinner H6 DVFS
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_083033_630568_14906820 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDUgQXByIDIwMjAgYXQgMTI6NDksIENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgU3VueGkgbWFpbnRhaW5lcnMgYW5kIG1lbWJl
cnMsCj4KPiBOb3cgdGhhdCByZXF1aXJlZCBkcml2ZXJzIGFyZSBtZXJnZWQgd2UgY2FuIGNvbnRp
YnV0ZSBvbiBEVkZTIHN1cHBvcnQgZm9yCj4gQWxsd2lubmVyIEg2Lgo+Cj4gVGhpcyBzZXJpZSBp
cyBiYXNlZCBvbiBZYW5ndGFvIExpIHNlcmllWzBdIGFuZCBNZWdvdXMgd29ya3NbMV0uCj4KPiBN
b3N0IG9mIHRoZSBPUFAgdGFibGVzIGFyZSB0YWtlbiBmcm9tIG9yaWdpbmFsIHZlbmRvciBrZXJu
ZWxbMl0uCj4gUGx1cyB0aGVyZSBpcyBhIG5ldyBDUFUgZnJlcXVlbmN5IEAxLjhHSHouCj4KPiBJ
IHdyb3RlIGEgc2ltcGxlIHNjcmlwdCB0byByYW5kb21seSBzZXQgYSBmcmVxdWVuY3kgZHVyaW5n
IGEgcmFuZG9tIHRpbWVbM10uCj4gV2l0aCB0aGlzIHNjcmlwdCBhbmQgdXNpbmcgc3RyZXNzLW5n
IGR1cmluZyBhIGRheSBJIGRpZG4ndCBzZWUgYW55IGlzc3VlLgo+IE1vcmVvdmVyIEkgaGF2ZSB0
ZXN0ZWQgc3BlY2lmaWNhbGx5IHRoZSAxLjhHSHogb24gbXkgQmVlbGluayBHUzEsIG1heCB0aGVy
bWFsCj4gODDCsEMgaXMgcmVhY2hlZCBhZnRlciB+MTBtaW4gYW5kIHRoZW4gdGhlIFNvQyBvc2Np
bGxhdGVzIHF1aWNrbHkgYmV0d2VlbiAxLjUKPiBhbmQgMS44R0h6LgpUaGlzIHJlc3VsdCBpcyB3
cm9uZyBpZ25vcmUgaXQuCgpJIHdpbGwgcmVzZW5kIG5ldyBvbmUgaW4gbmV4dCBzZXJpZS4KClJl
Z2FyZHMsCkNsZW1lbnQKPgo+IEkgYWxzbyB0ZXN0IHRoYXQgdGhhdCBvZmZsaW5pbmcgQ1BVMCBh
bmQgZG9pbmcgRFZGUyBvbiBvdGhlciBDUFVzIHdvcmtzLgo+IEFzIENQVSByZWd1bGF0b3IgaXMg
b25seSBzZXQgZm9yIENQVTAuCj4KPiBCdXQgbWF5YmUgaXQgZG9lc24ndCBjb3N0IG11Y2ggdG8g
c2V0IHRoZSByZWd1bGF0b3IgZm9yIGFsbCB0aGUgQ1BVcz8KPgo+IEplcm5laiB0ZXN0IHRoZSBH
UFUgZGV2ZnJlcSBvbiBzZXZlcmFsIEg2IGJvYXJkIHBhcnRpY3VsYXJ5IHRoZSBUYW5peCBUWDYg
d2hpY2gKPiBkb2Vzbid0IGhhdmUgYSBwcm9wZXIgZGVkaWNhdGVkIFBNSUMgYW5kIGRvZXNuJ3Qg
aGFkIGFueSB0cm91YmxlIHdpdGggaXQuCj4KPiBEbyB5b3UgdGhpbmsgSSBjYW4gZW5hYmxlIEdQ
VSBPUFAgZm9yIGFsbCBINiBCb2FyZHM/Cj4KPiBBbHNvIFlhbmd0YW8gTGkgZW5hYmxlIERWRlMg
Zm9yIE9yYW5nZVBpIGFuZCBQaW5lNjQsIGFzIEkgY2FuJ3QgdGVzdCB0aGVtIEkKPiBkaWRuJ3Qg
cmVlbmFibGUgdGhlc2UgYm9hcmRzLiBQbGVhc2UsIGxldCBtZSBrbm93IGlmIHlvdSB3YW50IG1l
IHRvIGFkZCB0aGVzZQo+IGJvYXJkcyBpbiB0aGlzIHNlcmllLgo+Cj4gVGhhbmtzLAo+IENsw6lt
ZW50Cj4KPiAwOiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwODE1MTE3Lwo+
IDE6IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvbG9nLz9oPXRocy01LjcKPiAyOiBodHRw
czovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9PcmFuZ2VQaUg2X0xpbnV4NF85L2Jsb2Iv
bWFzdGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMvc3VueGkvc3VuNTBpdzZwMS5kdHNpI0wzNDUtTDUx
Nwo+IDM6IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL2NsZW1lbnRwZXJvbi81NWEwNTVkYWUzZjEz
YmJkMTRmYjM5YzAwNjlmZTJlMgo+Cj4gQ2zDqW1lbnQgUMOpcm9uICg0KToKPiAgIGFybTY0OiBk
dHM6IGFsbHdpbm5lcjogaDY6IHNldCB0aGVybWFsIHBvbGxpbmcgdGltZQo+ICAgYXJtNjQ6IGR0
czogYWxsd2lubmVyOiBoNjogQWRkIEdQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9pbnRzIHRh
YmxlCj4gICBhcm02NDogY29uZmlnczogRW5hYmxlIHN1bjUwaSBjcHVmcmVxIG52bWVtCj4gICBh
cm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIGFuZCBHUFUgb3BwIHRhYmxlcyBm
b3IgQmVlbGluawo+ICAgICBHUzEKPgo+IE9uZHJlaiBKaXJtYW4gKDIpOgo+ICAgYXJtNjQ6IGR0
czogYWxsd2lubmVyOiBoNjogQWRkIHRoZXJtYWwgdHJpcCBwb2ludHMvY29vbGluZyBtYXAKPiAg
IGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCBDUFUgT3BlcmF0aW5nIFBlcmZvcm1hbmNl
IFBvaW50cyB0YWJsZQo+Cj4gWWFuZ3RhbyBMaSAoMSk6Cj4gICBhcm02NDogZHRzOiBhbGx3aW5u
ZXI6IGg2OiBBZGQgY2xvY2sgdG8gQ1BVIGNvcmVzCj4KPiAgLi4uL2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgIDEwICstCj4gIC4uLi9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LWNwdS1vcHAuZHRzaSB8IDEwMyArKysrKysrKysrKysrKysrKysKPiAgLi4u
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtZ3B1LW9wcC5kdHNpIHwgIDc0ICsrKysrKysr
KysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwg
IDQ0ICsrKysrKystCj4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICAgICAg
ICAgICB8ICAgMSArCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjI2IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtZ3B1LW9wcC5kdHNpCj4KPiAtLQo+IDIu
MjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
