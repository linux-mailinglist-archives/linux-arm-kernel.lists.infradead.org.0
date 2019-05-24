Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8752529621
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71jNPlx7E1YmwPBXfIS6wMBTQ0Wm7xZdcT5nCqqlI9Q=; b=rj3CPWbjYs8bvq
	tp+/rYyr575E5NyjbkbNWS6IO7p5LGGDOFTGpMjaSwdvMfdXyb8gtdXI01t0Keu8hYrG6PvlbaMaf
	HfPLM8PFiNGFMcg0jtA3DFNwZV+bi0uvervO0sNdGQOQGKrowd1m1xtXnf3jAH8Pq0WJDwVqydZdr
	iX/1Hq2h5gCEe9juNm/aLnOB8BaBOm0MMuFRzs3hDbE+XKI04UXBFg+KB3WoyCG+fSALlC5O7+dju
	gzcZQAx2JhMKZ9sDqZMgnxGZCV8N7z2tR7J0I3n96d9G1CeRoxyU70SJAJZ/+uZWEOu3ubMC9hnCb
	Ia2+OZdwxemUoESwFDPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7f1-0001IY-OS; Fri, 24 May 2019 10:42:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7et-0001HV-IF
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:42:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id l17so1093781wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sMgd9oZAKI1GrJ2O2mtgZuuxKr/03GN+V6GqnIamqiM=;
 b=Ya0zg7pQjg6VWbg1h/AAx+p19IUhVehVy7LguVr1othTF/poBx67vu9yEsTVyoYt7Y
 fsSheJV7cQFowfQ4dZrdxSJMq+6VSoDY3zNDeO1IQI4bbmd6T9mk3NRyOQN91cU8EXbm
 3o5xT0BlVYxu2rnyfFYKgxJXa1BBajc7cjZYaPiSB4x7nLmOVlyDbBnwCXgV4RLP1zgi
 GTe3D8kIMJE6TSf+sHcO8s8ZCO7NVyDoYwfgP+pAZJb4kfXtuThMmEA5w3How0R0pCRT
 4x0vKT7oh1ROoHsIbZ8+SbMaPmxG0PMdG/ZubnAj3OxeRMe/DMZSZLvln4MtCOz+2N+T
 5vMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sMgd9oZAKI1GrJ2O2mtgZuuxKr/03GN+V6GqnIamqiM=;
 b=nqFipDO9geeDLSocb0RIpDDLCazJddUPAQdyEyYRmxyjOuwL12KVkaoldpC2tjHRGS
 GcdThnaxIQgD6nu2AHZ9smp6npXamoz8ggjqWwpCJQzcqWi4oXKpavGOBv5otbEk2x4k
 Am8Uxpi6v6VDrDIGlha+L25QA1pUCwyVVYwu/oc9UkcuTYv0D1IX6Tn5Ube2V5FdwTUx
 sqCMQF5ABtLPT54YbAPdBAj1Z7Xcuz3jSOriLeqfddFhqzMNMLIyHI+rVorpvvQMQTUC
 oJ/KC/I8UZGeE70c4fLJCSfnC+WRrsl9bw1OEjoVBrUDUXVEl7faBeYPJ2Eg/28acxyg
 NjvQ==
X-Gm-Message-State: APjAAAXXPBGjnh2yZtOT0HkMl6wNvWxpdCeStdO6/snR6y1mLNWY6c9o
 0B8k51BPEFpc2q/C4tRBeM1s4y2I6ig=
X-Google-Smtp-Source: APXvYqyINA4RJcI3np98LtdVeR4axYizn55wIalMAZg4q6a2dh6IvmkWcd31cIgC6JlsO+XYc4CKvA==
X-Received: by 2002:a5d:54cc:: with SMTP id x12mr16916464wrv.303.1558694560785; 
 Fri, 24 May 2019 03:42:40 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id 88sm5731506wrc.33.2019.05.24.03.42.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:42:40 -0700 (PDT)
Subject: Re: [PATCH] clocksource/arm_arch_timer: Don't trace count reader
 functions
To: Marc Zyngier <marc.zyngier@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1558689025-50679-1-git-send-email-julien.thierry@arm.com>
 <9adf92c2-b7a5-00a3-ff09-58484d9bb9db@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a1af63f8-1b3e-a959-d309-7360679739a2@linaro.org>
Date: Fri, 24 May 2019 12:42:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9adf92c2-b7a5-00a3-ff09-58484d9bb9db@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034243_652678_6BA36476 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDUvMjAxOSAxMTo1MywgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDI0LzA1LzIwMTkg
MTA6MTAsIEp1bGllbiBUaGllcnJ5IHdyb3RlOgo+PiBXaXRoIHY1LjItcmMxLCBUaGUgZnRyYWNl
IGZ1bmN0aW9uc19ncmFwaCB0cmFjZXIgbG9ja3MgdXAgd2hlbmV2ZXIgaXQgaXMKPj4gZW5hYmxl
ZCBvbiBhcm02NC4KPj4KPj4gU2luY2UgY29tbWl0IDBlYTQxNTM5MGNkMyAoImNsb2Nrc291cmNl
L2FybV9hcmNoX3RpbWVyOiBVc2UKPj4gYXJjaF90aW1lcl9yZWFkX2NvdW50ZXIgdG8gYWNjZXNz
IHN0YWJsZSBjb3VudGVycyIpIGEgZnVuY3Rpb24gcG9pbnRlcgo+PiBpcyBjb25zaXN0ZW50bHkg
dXNlZCB0byByZWFkIHRoZSBjb3VudGVyIGluc3RlYWQgb2YgcG90ZW50aWFsbHkKPj4gcmVmZXJl
bmNpbmcgYW4gaW5saW5hYmxlIGZ1bmN0aW9uLgo+Pgo+PiBUaGUgZ3JhcGggdGFjZXJzIHJlbGll
cyBvbiBhY2Nlc3NpbmcgdGhlIHRpbWVyIGNvdW50ZXJzIHRvIGNvbXB1dGUgdGhlCj4gCj4gbml0
OiB0cmFjZXJzCj4gCj4+IHRpbWUgc3BlbnQgaW4gZnVuY3Rpb25zIHdoaWNoIGNhdXNlcyB0aGUg
bG9ja3VwIHdoZW4gYXR0ZW1wdGluZyB0byB0cmFjZQo+PiB0aGVzZSBjb2RlIHBhdGhzLgo+Pgo+
PiBBbm5vbnRhdGUgdGhlIGFybSBhcmNoIHRpbWVyIGNvdW50ZXIgYWNjZXNzb3JzIGFzIG5vdHJh
Y2UuCj4gCj4gbml0OiBBbm5vdGF0ZQo+IAo+Pgo+PiBGaXhlczogMGVhNDE1MzkwY2QzICgiY2xv
Y2tzb3VyY2UvYXJtX2FyY2hfdGltZXI6IFVzZQo+PiAgICAgICAgYXJjaF90aW1lcl9yZWFkX2Nv
dW50ZXIgdG8gYWNjZXNzIHN0YWJsZSBjb3VudGVycyIpCj4+IFNpZ25lZC1vZmYtYnk6IEp1bGll
biBUaGllcnJ5IDxqdWxpZW4udGhpZXJyeUBhcm0uY29tPgo+PiBDYzogTWFyYyBaeW5naWVyIDxt
YXJjLnp5bmdpZXJAYXJtLmNvbT4KPj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFy
bS5jb20+Cj4+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4K
Pj4gQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+PiBDYzogU3RldmVu
IFJvc3RlZHQgPHJvc3RlZHRAZ29vZG1pcy5vcmc+Cj4+IC0tLQoKWyAuLi4gXQoKPiBXZWxsIHNw
b3R0ZWQsIHRoYW5rcyBKdWxpZW4uCj4gCj4gQWNrZWQtYnk6IE1hcmMgWnluZ2llciA8bWFyYy56
eW5naWVyQGFybS5jb20+Cj4gCj4gRGFuaWVsLCBjYW4geW91IHBsZWFzZSBwaWNrIHRoaXMgdXAg
Zm9yIHRoZSBuZXh0IGJhdGNoIG9mIGNsb2Nrc291cmNlIGZpeGVzPwoKU3VyZS4KCkkgd2lsbCB0
YWtlIGNhcmUgb2YgZml4aW5nIHRoZSBjb21tZW50cywgbm8gbmVlZCB0byByZXNlbmQuCgpUaGFu
a3MKCiAgLS0gRGFuaWVsCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9y
ZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAg
PGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDov
L3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
