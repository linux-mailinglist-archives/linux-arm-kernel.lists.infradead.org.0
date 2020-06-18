Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849141FED33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BqPOj1WwVZ+kAE+kBdhqQO3uB73DQkwWqtKZYaqjyI=; b=ux/FpqIj0W7Ata
	3Mp1AnfgVGJrU/6WdgM0kdW7+dHv+hARFNTCeHatm2iz27L1VRpdGaPKWP18kYy5Cg4Un8/yp5qmu
	o/5UX/bDSSrMaY0c/SjsSBjK8LBjXMhlkmswfsGfacOkl+SKEHL4lydVvkOlPhIDUlpwCwBJHaZQg
	xPmgltcgpdRxf1m+vcm2TLueCOHq4C7jh6tWU2krKh9fbicx/G9tRAQW9eD8iQ5OKsb79jY9fZLWG
	iIgh0mrjtlXdFwzSGezA+usCg3lJpjRYW/pqq6JePOm3Z9iUuttN3TfXGqC/a7viji+H/PdvtS0BB
	N7pFv6PDcSZfdVPn/4rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpbV-0006yS-QV; Thu, 18 Jun 2020 08:08:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpbJ-0006xm-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:08:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85FC731B;
 Thu, 18 Jun 2020 01:08:41 -0700 (PDT)
Received: from bogus (unknown [10.37.12.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC4633F6CF;
 Thu, 18 Jun 2020 01:08:39 -0700 (PDT)
Date: Thu, 18 Jun 2020 09:08:33 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 2/2] cpufreq: arm_scmi: Set fast_switch_possible
 conditionally
Message-ID: <20200618080833.GA20559@bogus>
References: <20200617094332.8391-1-nicola.mazzucato@arm.com>
 <20200617094332.8391-2-nicola.mazzucato@arm.com>
 <20200617124753.GA15211@bogus>
 <20200618061420.5q7xsldakax2zro5@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618061420.5q7xsldakax2zro5@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_010848_246901_6F434D7E 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicola Mazzucato <nicola.mazzucato@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, lukasz.luba@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTgsIDIwMjAgYXQgMTE6NDQ6MjBBTSArMDUzMCwgVmlyZXNoIEt1bWFyIHdy
b3RlOgo+IE9uIDE3LTA2LTIwLCAxMzo0NywgU3VkZWVwIEhvbGxhIHdyb3RlOgo+ID4gVGhpcyBp
cyBmaXJzdCBzdGVwIHRvd2FyZHMgYXZvaWRpbmcgcG9sbGluZyBiYXNlZCBjcHVmcmVxIHNldCBp
ZiBmaXJtd2FyZQo+ID4gaGFzIGZhc3QgYWNjZXNzIHJlZ2lzdGVycyB0aGF0IGJ5cGFzcyBub3Jt
YWwgbWFpbGJveCBiYXNlZCBtZXNzYWdpbmcuCj4gPgo+ID4gSWYgeW91IGhhcHB5IHdpdGggdGhp
cyBhbmQgcHJvdmlkZSBhY2ssIEkgd2lsbCB0YWtlIHRoaXMgYWxvbmcgd2l0aCBzY21pCj4gPiBj
aGFuZ2VzIHZpYSBBUk0gU29DLiBIb3BlIHRoYXQgaXMgZmluZSBieSB5b3UuCj4KPiBTdWRlZXAs
Cj4KPiBJIGFtIG5vdCBzdXJlIGhvdyBpdCBjb25jZXJucyBtZSBmcmFua2x5IDopCj4KClNvcnJ5
IEkgd2Fzbid0IGNsZWFyLgoKPiBBRkFJQ1QsIHRoaXMgaXMgZW5hYmxpbmcgZmFzdCBzd2l0Y2gg
YmFzZWQgb24gc29tZSBtZWNoYW5pc20gKGludGVybmFsCj4gdG8gc2NtaSkgYW5kIHNvIGVpdGhl
ciB0aGUgY3B1ZnJlcSBkcml2ZXIgd2lsbCBoYXZlIGZhc3Qtc3dpdGNoCj4gZW5hYmxlZCBvciBu
b3QsIGFuZCBib3RoIGFyZSBmaW5lIGJ5IHRoZSBjcHVmcmVxIGNvcmUuCj4KCkluZGVlZC4KCj4g
QW5kIHNvIEkgYW0gY29uZnVzZWQgb24gd2h5IG15IEFjayBpcyBpbXBvcnRhbnQgaGVyZSA6KQo+
CgpHZW5lcmFsbHkgQVJNIFNvQyB0ZWFtIGV4cGVjdHMgYSBzdGFtcCBmcm9tIG90aGVyIHN1YnN5
c3RlbSBtYWludGFpbmVycwppZiB0aGV5IGFyZSBwdWxsaW5nIGl0LiBJIHVuZGVyc3RhbmQgdGhl
cmUgaXMgbW9yZSBmaXJtd2FyZSBhc3BlY3QgdGhhbgpjcHVmcmVxIGFzcGVjdCBoZXJlLCBidXQg
c3RpbGwgd2UgbWF5IG5lZWQgeW91ciBzdGFtcCB0byB0aGlzIPCfmIkgZm9yCmxvZ2lzdGljIHJl
YXNvbnMuCgotLQpSZWdhcmRzLApTdWRlZXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
