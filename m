Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F12A18440F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMWy/hD4mZgnywyChdjMHaKf8nqjzrmpL2fGk5JpOWg=; b=UBkDFENRvZUuQo
	248WS/iZXOthRU96vP1vQDdjY1RTSkskP8vgHiq3PpRXNGVJ6GZFuNHwuUvElYgB9yqXajhyNvIwA
	sntXnbk5xjFrAQY22e0c5kNNbg9COkOK+Uorz1JtoaGieJn6YP5pCbEfcAIdoP5tPVvr+IgYbdHZW
	rJ+8gbzK0Wo92cymwsge1+d2/7+KBNfnmG/DIkjgiJBltnL2LiWq3eJkrU987H95XsP/XimCwKHmu
	KdrG/btk8njy8HScVsJJuH2BBj7Z8QK9xe6EGbEG48VugUaXA09TMFBfhtJCBEYulFlF4n27wnUQQ
	dPrSMBrI8G4MkyZeZ3HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgvM-0007T0-O1; Fri, 13 Mar 2020 09:48:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgv8-0007JQ-W5; Fri, 13 Mar 2020 09:48:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so1148091wrx.12;
 Fri, 13 Mar 2020 02:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XQL/ya+7buqNZWgLcV53EPIchP1Jf2XAfvnaPJGA1KA=;
 b=pYdPIASjYoqpQoZ+d0D1BtbpFxOaL31zy7s2vppMa61ioYUMdqnfucab9xSLprGaDe
 KGicwSl2z64hVgJwPPxeOtKJSWJRP0vq189Vy1BPL+jTmMa+VMOWe/NXV//VrMWJCkUy
 5m9fX3NLEGm86NabuYrtSJ5drAQItP1zom27YjfmHKtnXn03WFVN39BlGaUpr3OKh/pW
 useVs+j1RAHP31DeNOzwEI0F8RdbySDuG9ZwxP0fv0m+LSQJyq6zpF54I/BNiIJyB5d9
 rkMCgtLU6AMeSCqrgPTrLvm1L6c3kAt+8Ak/s+CyalMgFapywFDRN8dOqKsEWuSOeWRt
 3qew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XQL/ya+7buqNZWgLcV53EPIchP1Jf2XAfvnaPJGA1KA=;
 b=tzXgJQxFtFdw94A6U7Kgm08kblFsKwYcWrAz1kUkNIReQN7NFHiDAP2hD7TLstNFEN
 +V/d3Zw4ESNOhMrFXtl3r3vpl8EOh+GbMimGasrjY0ripnuWDhD5eP5p20xA7g6aBaUV
 q5nDQOd8C7qvmxW5H08iCzJsA/TPgVotkpXBBpvFk1sCTL7eNuRfLU11Bwathj0P68zo
 kkNy3qn+mJ/hB1ZZsWUYpHt3LepDr0xZiz5MYKbf+7d2nhZ1exLQ5LQ/bspGyU6+yr3u
 /Eg270nDN0hjY28Es25+fq4A6RBts+PJ/Xybpu1mJ7L0dLRzpwApi/0v71ijE3dJFchg
 9+sw==
X-Gm-Message-State: ANhLgQ0hpqT/bGmbf002OLrVeqI/qfyoyQen/iaxFwm/L0nZu7HuHhz0
 7uR0uNzvLDIXpKOlxmNAWXw=
X-Google-Smtp-Source: ADFU+vtaxHOPeIyS6PgzifyQThwGs16+e+1vFL082dvhCXY95j+M8YBn6L+ANelNhAcd5SM3g8oOtQ==
X-Received: by 2002:adf:94c2:: with SMTP id 60mr16813347wrr.396.1584092877688; 
 Fri, 13 Mar 2020 02:47:57 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u7sm8109776wme.43.2020.03.13.02.47.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 02:47:57 -0700 (PDT)
Subject: Re: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
To: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org
References: <20200304074051.8742-1-jbx6244@gmail.com>
 <1784340.9KJLpVao5L@phil> <2a5ef6fc-2487-91ef-24ce-97dd47b0a137@gmail.com>
 <7869677.iSBujUIW6u@phil>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <5af5bdfd-3522-9066-8bde-84a5e468be32@gmail.com>
Date: Fri, 13 Mar 2020 10:47:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7869677.iSBujUIW6u@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_024759_036489_1E9FFD6F 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sIFJvYiwKCkZyb20gaHR0cHM6Ly9jb3JlYm9vdC5vcmcvc3RhdHVzL2JvYXJkLXN0
YXR1cy5odG1sCgpUaGUgb25seSBzdXBwb3J0ZWQgYm9hcmRzIGxpc3RlZCBhcmU6CgpWZXlyb24g
Um9ja2NoaXAgUkszMjg4IGJvYXJkcwpWZXlyb24gTWlja2V5IFJvY2tjaGlwIFJLMzI4OCBib2Fy
ZApWZXlyb24gUmlhbHRvIFJvY2tjaGlwIFJLMzI4OCBib2FyZApHcnUgUm9ja2NoaXAgUkszMzk5
IHJlZmVyZW5jZSBib2FyZAoKRml4ZWQgd2l0aDoKQVJNOiBkdHM6IHJvY2tjaGlwOiBSZW1vdmUg
QDAgZnJvbSB0aGUgdmV5cm9uIG1lbW9yeSBub2RlCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcGF0Y2gvMTA2ODgwODEvCgpUaGUgcHJvYmxlbSBpcyByazMyODgtdmV5cm9uIG9ubHkgSSB0
aGluay4KRWxzZSBmaXggY29yZWJvb3QgdG8gY29tcGx5IHdpdGggRFQgcnVsZXMsIG5vdCB0aGUg
b3RoZXIgd2F5IGFyb3VuZC4KV2lsbCBtYWtlIHYyLgoKQ2FuIHJvYmggZ2l2ZSBhZHZpY2UgaGVy
ZT8KClRoYW5rcwoKT24gMy82LzIwIDEyOjU4IEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBI
aSBKb2hhbiwgUm9iLAo+IAo+IEFtIERvbm5lcnN0YWcsIDUuIE3DpHJ6IDIwMjAsIDIzOjIxOjUy
IENFVCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPj4gR29hbCB3YXMgdG8gcmVkdWNlIHRoZSBlcnJv
ciBvdXRwdXQgb2YgZXhpc3RpbmcgY29kZSBhIGxpdHRsZSBiaXQsCj4+IHNvIHRoYXQgd2UgY2Fu
IHVzZSBpdCBmb3IgdGhlIHJldmlldyBvZiBuZXcgcGF0Y2hlcy4KPj4gU29tZSBxdWVzdGlvbnM6
Cj4+IEFzIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmUsIHdoZXJlIGVsc2UgaXMgY29yZWJvb3Qg
dXNlZD8KPj4gSXMgdGhpcyBhIHJrMzI4OC12ZXlyb24uZHRzaSBwcm9ibGVtIG9ubHk/Cj4+IGll
LiBJcyBpdCBhIG9wdGlvbiB0byBwcm9kdWNlIGEgcGF0Y2ggc2VyaWUgdjIgd2l0aG91dCB2ZXly
b24/Cj4+IENhbiBzb21lb25lIGhlbHAgdGVzdGluZz8KPiAKPiBJIGJlbGlldmUgdGhhdCBpcyBt
b3JlIHF1ZXN0aW9uIGZvciBAUm9iIDoKPiAKPiBJbiB0aGUgcGFzdCB3ZSBzYWlkIHRoYXQgaXQg
d291bGQgYmUgb2sgdG8gaGF2ZSAibWVtb3J5IiBub2RlcyB3aXRob3V0Cj4gYWRkcmVzcywgc28g
Im1lbW9yeSB7fSIgaW5zdGVhZCBvZiAibWVtb3J5QDAge30iLCBzaW1wbHkgYmVjYXVzZQo+IGJv
b3Rsb2FkZXJzIG1lc3MgdXAgc29tZXRpbWVzLgo+IAo+IFF1ZXN0aW9uIG5vdyB3b3VsZCBiZSBo
b3cgdG8gbWFrZSB0aGUgeWFtbCBiaW5kaW5ncyBoYXBweS4KPiAKPiBUaGFua3MKPiBIZWlrbwo+
IAo+IAo+Pgo+PiBKb2hhbgo+Pgo+PiBPbiAzLzUvMjAgMTA6MzEgUE0sIEhlaWtvIFN0dWVibmVy
IHdyb3RlOgo+Pj4gSGkgSm9oYW4sCj4+Pgo+Pj4gQW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjAs
IDA4OjQwOjUwIENFVCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPj4+PiBBIHRlc3Qgd2l0aCB0aGUg
Y29tbWFuZCBiZWxvdyBnaXZlcyBmb3IgZXhhbXBsZSB0aGlzIGVycm9yOgo+Pj4+Cj4+Pj4gYXJj
aC9hcm0vYm9vdC9kdHMvcmszMjg4LXRpbmtlci5kdC55YW1sOiAvOiBtZW1vcnk6Cj4+Pj4gRmFs
c2Ugc2NoZW1hIGRvZXMgbm90IGFsbG93Cj4+Pj4geydkZXZpY2VfdHlwZSc6IFsnbWVtb3J5J10s
ICdyZWcnOiBbWzAsIDAsIDAsIDIxNDc0ODM2NDhdXX0KPj4+Pgo+Pj4+IFRoZSBtZW1vcnkgbm9k
ZXMgYWxsIGhhdmUgYSByZWcgcHJvcGVydHkgdGhhdCByZXF1aXJlcyAnQCcgaW4KPj4+PiB0aGUg
bm9kZW5hbWUuIEZpeCB0aGlzIGVycm9yIGJ5IGFkZGluZyB0aGUgbWlzc2luZyAnQDAnIHRvCj4+
Pj4gdGhlIGludm9sdmVkIG1lbW9yeSBub2RlbmFtZXMuCj4+Pj4KPj4+PiBtYWtlIEFSQ0g9YXJt
IGR0YnNfY2hlY2sKPj4+PiBEVF9TQ0hFTUFfRklMRVM9fi8ubG9jYWwvbGliL3B5dGhvbjMuNS9z
aXRlLXBhY2thZ2VzL2R0c2NoZW1hLwo+Pj4+IHNjaGVtYXMvcm9vdC1ub2RlLnlhbWwKPj4+Cj4+
PiBjaGFuZ2VzIHRvIG1lbW9yeSBub2RlcyB5b3Ugc2FkbHkgY2Fubm90IGRvIGluIHN1Y2ggYW4g
YXV0b21hdGVkIGZhc2hpb24uCj4+PiBJZiB5b3UgcmVhZCB0aGUgY29tbWVudCBpbiByazMyODgt
dmV5cm9uLmR0c2kgeW91J2xsIHNlZSB0aGF0IGEgcHJldmlvdXMKPj4+IHNpbWlsYXIgaXRlcmF0
aW9uIGJyb2tlIGFsbCBvZiB0aG9zZSBtYWNoaW5lcyBhcyB0aGVpciBjb3JlYm9vdCBkb2Vzbid0
Cj4+PiBjb3B5IHdpdGggbWVtb3J5QDAgYW5kIHdvdWxkIGluc2VydCBhbm90aGVyIG1lbW9yeSBu
b2RlIHdpdGhvdXQgQDAKPj4+Cj4+PiBJbiB0aGUgcGFzdCBpdGVyYXRpb24gdGhlIGNvbnNlbnN1
cyB0aGVuIHdhcyB0aGF0IG1lbW9yeSB3aXRob3V0IEAwCj4+PiBpcyBhbHNvIG9rIChhcyBpdCBp
c24ndCBjaGFuZ2VhYmxlIGFueXdheSkuCj4+Pgo+Pgo+Pj4gQXMgSSBkb24ndCByZWFsbHkgd2Fu
dCB0byByZXBlYXQgdGhhdCwgSSdkIGxpa2UgYWN0dWFsIGhhcmR3YXJlIHRlc3RzCj4+PiBiZWZv
cmUgdG91Y2hpbmcgbWVtb3J5IG5vZGVzLgo+Pgo+PiBBbnkgc3VnZ2VzdGlvbi9mZWVkYmFjayBy
YXBwb3J0IHdlbGNvbWUuCj4+Cj4+Pgo+Pj4gSGVpa28KPj4+Cj4+Pgo+Pgo+IAo+IAo+IAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
