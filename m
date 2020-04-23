Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0717B1B61B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmEFBNfZeEjJHEwbl0ZjA1Ev/40UbWtppcFFwY2A4dI=; b=qcVvbsZg2ztP7P
	P+x8ZDWoSxmZ47aoSxMTv9+k3IZsSMcWaiYS2q8/STOpOCEtit0Rue9YGcWpSumQQ9KyZKBrY/FRT
	SDNdn1vpEX61rk281s/wxNvRlxQ7MC7CrOjvxbxsEH0kVQuRAhsm2RjDd/+64ccYQqUzgE1H5WqHG
	txxGYYpfzpBaWQ00C0Gy0JRfgvPcQ76tNHbAu9jaID3Bxe2mQyerREmgiZEetE5beQGFaSG5dPVdC
	ZyV3vFGE+yecUHVMbyqc8LQtoO6UjAUIVKnRbN3ScJojUvMnRIQJMRI6hsbhDGTUKiEBHHzPPZpeX
	oUqlmarucDsK5jo6w6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfRx-000340-3q; Thu, 23 Apr 2020 17:15:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfRl-00032S-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 17:15:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so7391753wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 10:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Fsz6yPmVodHIAGKUEkvYHzu/ExufdaJ3lV6EfBbjr/M=;
 b=LS7t6pzEmK1UKWLE+ifdRC16uMDswKS7v+2IPC/TfosO7rAl+qZLKWbjscW8fVMt3v
 1ma+2i4218WDyTaV/Nz10zY4H9KwN0u+ZSJbgg+iuqYMRImmBIYJNaO+GRPQWuMQ7nEn
 EIONqnAxXg1Zp2PZZeAdugJxMad9J6bW2gsLRpfAY8WjqySQzErIR3g+hDarox9ZuWqR
 GnpnaUL95V7dBN0xZRAeWhHOTZeyLhRGhJzZ9oKaENvK3QAePz+ztUbyLI1n2HD+wHEF
 e6D2NNwm3CcIPwegKXhdh8ViXwMsS8Mgh0dzwsOBoq4UFCZZn+OwOqe34GGtYiZxNz0D
 Dn2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Fsz6yPmVodHIAGKUEkvYHzu/ExufdaJ3lV6EfBbjr/M=;
 b=UBrgx7ctZk0ozhBdtlGD1GP8KjJi9uKHlMkbjhO+vj3T5KkAI7wQRJe7ra1y4jXXGy
 RHy18chFkCqqoRUTuEQsyT2oqvmPa/2HaPfxNSb+t1JQyPMihXWheN+OW0HGs2f+6Lcn
 CqNeoQL+WqkSuuiG1zJHJqMs4xI/rmuuxYz2G+JpOrZFPP7L8SoloRXoWG125jaCYxHC
 JMGgcnsnWCBIM61wIaKq4cAeU7X599UdRtFc702yL+jruCh7H/q5y+T2aGLFyx4h190d
 pTVkyI+cWroVi1ZJtbDy1RrjPuxb7fCoRWfW6znzigFNFP70VEJH3i4DeilWN3YQgmEX
 pRNw==
X-Gm-Message-State: AGi0Pub2dlni++baFUymrEEYYyPd4h8kiPkurT19MrJ078W+ZX74WEDD
 VphYadVGbGK+jZCmf5y6BwAS1Q==
X-Google-Smtp-Source: APiQypLpzfjeHcKORCtuutm1uyBf7sFOUFW7Mb8uOr8lGTYIICuH1CY1N6lSdxp/QVB17oX17RO+pA==
X-Received: by 2002:a05:600c:2194:: with SMTP id
 e20mr5154639wme.22.1587662130818; 
 Thu, 23 Apr 2020 10:15:30 -0700 (PDT)
Received: from [192.168.43.23] ([37.167.216.250])
 by smtp.googlemail.com with ESMTPSA id a20sm4965935wra.26.2020.04.23.10.15.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 10:15:30 -0700 (PDT)
Subject: Re: [PATCH v6 04/10] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-5-lukasz.luba@arm.com>
 <20200423151250.GB65632@linaro.org>
 <ff1c8cc5-f64d-6156-7d30-97b8426c6f99@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <ddf89887-4fa5-f2ca-d62a-9158f7d29db2@linaro.org>
Date: Thu, 23 Apr 2020 19:15:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ff1c8cc5-f64d-6156-7d30-97b8426c6f99@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_101533_808709_27A00715 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDQvMjAyMCAxODo1NywgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gCj4gCj4gT24gNC8yMy8y
MCA0OjEyIFBNLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24gRnJpLCBBcHIgMTAsIDIwMjAg
YXQgMDk6NDI6MDRBTSArMDEwMCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+PiBBZGQgc3VwcG9ydCBm
b3Igb3RoZXIgZGV2aWNlcyB0aGF0IENQVXMuIFRoZSByZWdpc3RyYXRpb24gZnVuY3Rpb24KPj4+
IGRvZXMgbm90IHJlcXVpcmUgYSB2YWxpZCBjcHVtYXNrIHBvaW50ZXIgYW5kIGlzIHJlYWR5IHRv
IGhhbmRsZSBuZXcKPj4+IGRldmljZXMuIFNvbWUgb2YgdGhlIGludGVybmFsIHN0cnVjdHVyZXMg
aGFzIGJlZW4gcmVvcmdhbml6ZWQgaW4KPj4+IG9yZGVyIHRvCj4+PiBrZWVwIGNvbnNpc3RlbnQg
dmlldyAobGlrZSByZW1vdmluZyBwZXJfY3B1IHBkIHBvaW50ZXJzKS4gVG8gdHJhY2sgdXNhZ2UK
Pj4+IG9mIHRoZSBFbmVyZ3kgTW9kZWwgc3RydWN0dXJlcywgdGhleSBhcmUgcHJvdGVjdGVkIHdp
dGgga3JlZi4KPj4KPj4gV2h5IG5vdCBhZGQgdGhlIGVuZXJneSBtb2RlbCBzdHJ1Y3R1cmUgaW4g
dGhlIHN0cnVjdCBkZXZpY2UgZGlyZWN0bHk/Cj4gCj4gRG8geW91IG1lYW4gdGhpcyBzdHJ1Y3R1
cmU/Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9pbmNs
dWRlL2xpbnV4L2RldmljZS5oI0w1MzcKPiAKPiBhbmQgdG8gcHV0IHNvbWV0aGluZyBsaWtlOgo+
IHN0cnVjdCBkZXZpY2Ugewo+IC4uLgo+IMKgwqDCoMKgc3RydWN0IGRldl9wbV9kb21haW7CoMKg
wqAgKnBtX2RvbWFpbjsKPiAjaWZkZWYgQ09ORklHX0VORVJHWV9NT0RFTAo+IMKgwqDCoMKgc3Ry
dWN0IGVtX3BlcmZfZG9tYWluwqDCoMKgICplbV9wZDsKPiAjZW5kaWYKPiAuLi4KPiB9OwoKWWVz
LCBleGFjdGx5LgoKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRw
Oi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xp
bmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
