Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7661DE4B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9WXSc6pMqTyJ9VpYaE67BWDwff2EWUxGyuOp2S59TM=; b=F5r+53jk7JPc/R
	XtDZlUO8UP+x2jCU87IJA9EPmeZMFXFBzEklKE4PZJwq+szfPhHylC1hGGLym6Y3NZsQbsURqDMwj
	tkH2AKVLWzeZhCSJgBAuozmxHBaTvQWdpJZWZDf/thbF/kdXPd9J1VbNBKnHpcbx/YIMIn3Vw6DKm
	P9lfjUNjuHiCEciFJTfLJYNFtSjAZJGys8soRNXcIQEuAsZFWrgHf3xNdXDb473KgN/Roff4q89PX
	RP7BweFoWuvwqdo28L03RLHQfWcfJK5S0jOYzw5ZbekQuAsutnPqW7fszmoQOwb7MLPaNf0sVe9rF
	DlWn32XZ4uuVuee3+EXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc59H-00008t-MP; Fri, 22 May 2020 10:43:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc595-00007Q-4x
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:43:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id h17so9673361wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 03:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VGoYWtdu5N5u5jqWgNJFmyeBLxTDklq5XGRfQf6qY4Q=;
 b=YdeY/dYKbHgnjF5Rfbcb+eEpYTqwDn5A1vVV0JJ5zhynRDstj4c9FpHWPMl+epaBKj
 4+oNruH5nf6kCafoeC8oqKNyZ/Po23OIUoBNbYN9r4/k0SejSAvyGC92UsY58XQLUfsa
 3JjDrFGsY19YdyfPsHQclmg1uXVg+LMh91ZPjSFXVChXGrVWjG0Ui7eJQGqklE6+5kay
 g5Uz20ffaV5DdoIjAToXKulBulbkNzxmwxh2KnSMRG7DYDLx1ioPSUF/Sq5icU69Spbb
 sYt6m5Pg2RyBF7ZlFDkiMCnoSB3EaxfTGXp6TNa8MZWvQOKRiLEeX0kDcZ6ep0ep66E5
 CPew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VGoYWtdu5N5u5jqWgNJFmyeBLxTDklq5XGRfQf6qY4Q=;
 b=CFT6odX0jQmYo0gyETct8/lpSqn5R9f8QnWYnbHIPWXqwCJFJGg/X9Ij8tob3VkVMj
 rwgb2LWVNaZkZUwqoZ9hL1UAISKQGrN0zTqcZCBEbLaXHjMftc6xivZFePaw7tFM+/62
 JBvceszes1OXezCPBDK9QntAm6hul2UdYtW4GLY/GGxNwbSvOflOlxixIHg/KBzZ8Jdr
 Qx9nf7q6PM5qMyNl8RUGY/HKEPH2PzFizHVuv+KXyghDHLEHWyZwd5FdDsEsM/RnaVDc
 8n5dChdbdZ8KnqhlEJpDibFSRmf6FbbAGtQs5KItdDvs9jw9pJy9WyEe9Loi7hUzRyR9
 X+7g==
X-Gm-Message-State: AOAM532gaHjAXLbDrzK6YQiucaN2yPt07rIjzQvcABosftMM91zqZyEg
 vTQox7bou16eJ5VVrKrHwScicg==
X-Google-Smtp-Source: ABdhPJybiYUfjcoyk6EZQDK4C+UEDo86CQQDAJc9f/khvU4Ce7Ww2hRO343VGYU3st9oV83jeHWEKA==
X-Received: by 2002:a5d:52c6:: with SMTP id r6mr2933510wrv.269.1590144196705; 
 Fri, 22 May 2020 03:43:16 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id h1sm9702407wme.42.2020.05.22.03.43.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 03:43:16 -0700 (PDT)
Subject: Re: [PATCH v7 00/15] Add support for devices in the Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200511111912.3001-1-lukasz.luba@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <abff69b6-b033-18e2-f380-ceccb42c6b01@linaro.org>
Date: Fri, 22 May 2020 12:43:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200511111912.3001-1-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_034319_244948_7391EBD9 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com, khilman@kernel.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEx1a2FzeiwKCk9uIDExLzA1LzIwMjAgMTM6MTgsIEx1a2FzeiBMdWJhIHdyb3RlOgo+IEhp
IGFsbCwKPiAKPiBUaGlzIHBhdGNoIHNldCBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIGRldmljZXMg
aW4gdGhlIEVuZXJneSBNb2RlbCAoRU0pCj4gZnJhbWV3b3JrLiBJdCB3aWxsIHVuaWZ5IHRoZSBw
b3dlciBtb2RlbCBmb3IgdGhlcm1hbCBzdWJzeXN0ZW0uIEl0IHdpbGwKPiBtYWtlIHNpbXBsZXIg
dG8gYWRkIHN1cHBvcnQgZm9yIG5ldyBkZXZpY2VzIHdpbGxpbmcgdG8gdXNlIG1vcmUKPiBhZHZh
bmNlZCBmZWF0dXJlcyAobGlrZSBJbnRlbGxpZ2VudCBQb3dlciBBbGxvY2F0aW9uKS4gTm93IGl0
IHNob3VsZAo+IHJlcXVpcmUgbGVzcyBrbm93bGVkZ2UgYW5kIGVmZm9ydCBmb3IgZHJpdmVyIGRl
dmVsb3BlciB0byBhZGQgZS5nLgo+IEdQVSBkcml2ZXIgd2l0aCBzaW1wbGUgZW5lcmd5IG1vZGVs
LiBBIG1vcmUgc29waGlzdGljYXRlZCBlbmVyZ3kgbW9kZWwKPiBpbiB0aGUgdGhlcm1hbCBmcmFt
ZXdvcmsgaXMgYWxzbyBwb3NzaWJsZSwgZHJpdmVyIG5lZWRzIHRvIHByb3ZpZGUKPiBhIGRlZGlj
YXRlZCBjYWxsYmFjayBmdW5jdGlvbi4gTW9yZSBpbmZvcm1hdGlvbiBjYW4gYmUgZm91bmQgaW4g
dGhlCj4gdXBkYXRlZCBkb2N1bWVudGF0aW9uIGZpbGUuCj4gCj4gRmlyc3QgNyBwYXRjaGVzIGFy
ZSByZWZhY3RvcmluZyBFbmVyZ3kgTW9kZWwgZnJhbWV3b3JrIHRvIGFkZCBzdXBwb3J0Cj4gb2Yg
b3RoZXIgZGV2aWNlcyB0aGF0IENQVXMuIFRoZXkgY2hhbmdlOgo+IC0gbmFtaW5nIGNvbnZlbnRp
b24gZnJvbSAnY2FwYWNpdHknIHRvICdwZXJmb3JtYW5jZScgc3RhdGUsCj4gLSBBUEkgYXJndW1l
bnRzIGFkZGluZyBkZXZpY2UgcG9pbnRlciBhbmQgbm90IHJlbHkgb25seSBvbiBjcHVtYXNrLAo+
IC0gY2hhbmdlIG5hbWluZyB3aGVuICdjcHUnIHdhcyB1c2VkLCBub3cgaXQncyBhICdkZXZpY2Un
Cj4gLSBpbnRlcm5hbCBzdHJ1Y3R1cmUgdG8gbWFpbnRhaW4gcmVnaXN0ZXJlZCBkZXZpY2VzCj4g
LSB1cGRhdGUgdXNlcnMgdG8gdGhlIG5ldyBBUEkKPiBQYXRjaCA4IHVwZGF0ZXMgT1BQIGZyYW1l
d29yayBoZWxwZXIgZnVuY3Rpb24gdG8gYmUgbW9yZSBnZW5lcmljLCBub3QKPiBDUFUgc3BlY2lm
aWMuCj4gUGF0Y2hlcyA5LTE0IGNoYW5nZSBkZXZmcmVxIGNvb2xpbmcsIGRyb3BwaW5nIHBhcnQg
b2Ygb2xkIHBvd2VyIG1vZGVsIGFuZAo+IGFkZGluZyByZWdpc3RyYXRpb24gd2l0aCBFbmVyZ3kg
TW9kZWwgdmlhIGV4cG9ydGVkIEdQTCBmdW5jdGlvbi4KPiBUaGUgbGFzdCBwYXRoIGlzIGEgc2lt
cGxlIGNoYW5nZSBmb3IgUGFuZnJvc3QgR1BVIGRyaXZlci4KPiAKPiBUaGUgcGF0Y2ggc2V0IGlz
IGJhc2VkIG9uIGxpbnV4LW5leHQgdGFnIG5leHQtMjAyMDA1MDguCgpEbyB5b3UgdGhpbmsgaXQg
aXMgcG9zc2libGUgdG8gcmVzcGluIGFnYWluc3QgbGludXgtcG0gbmV4dCA/CgpJIHdhbnRlZCB0
byB0cnkgdGhlIHNlcmllcyBidXQgSSdtIGdldHRpbmcgbm9uIHRyaXZpYWwgY29uZmxpY3RzIHdp
dGgKdGhlIGRldmZyZXFfY29vbGluZyBjaGFuZ2VzCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZv
bGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNl
Ym9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
