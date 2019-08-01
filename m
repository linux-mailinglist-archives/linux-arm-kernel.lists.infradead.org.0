Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13DE7DFF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzNsagbe4iCd7b6SZ1lFoxPkbyTNkF3IaIj+TFthtdw=; b=L8lQjqEaGOZWme
	KJzIUTzh6FY+NjOVi3B+rj3Nht7pHdwyKggxnNQwHNg75EE5ZhLZ/seLphiapXztFRn38q5xGRFge
	MJeg1LVTT8C0mmjs9DLIwkYVu3cNHzY4MNrgjAV9g2yj5I3HFzLq1WeFCmR9H/wGOgtdkDUQB4XsQ
	FKCUgNR8/2P763Gpa+pygSmQMIpyrxtJ3WNFmv5X+BjzTUz05RObTD2HYpY5BXzvaQlHrBU1N1/tE
	PlaytPb8bXQGvsDuY10+obZDle6NXTHWlk0DaUrgmf7o27BkAPpQEXLNHH8muRo/blLABmcI45PGb
	K8WhvA+JeRyghtVozb/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDos-0004Aa-7C; Thu, 01 Aug 2019 16:20:46 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDok-0004AD-EF
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:20:39 +0000
Received: by mail-qt1-x842.google.com with SMTP id 44so39781760qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 09:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D5T2Uxf2pvzlQgNSYEF3ht0LNwLAYlgpi5hrr37GkRA=;
 b=Mvpx3v8Tm65xrnLV1EEww37UC+PyVjoVk0+zWXwvZuOSfAQOvUYvAIomjd6kZXE1gm
 fjhkNNRtdDpAu+RewXXHKx7mSV8JMWpKCGvIxwTvHgMK27WN/QZa/a7srPkJ/HxDu3V2
 L4k8BVG8VOyNSVwuZTpgxORfTSMmIcshkYReCcSchZWN5KARvBqEfc8kdMGiQBXUjIUl
 YFrLvqbdBF3FWqokJ5gbVYX2/kk6/jj28S7bgpAlFL6davzgmsWX2aYIDuj7lPw+9n2B
 I/mVkvDLFFDWnvklQinWPZ4RpGz+2EhoWotw4JVe3y5rClcRe4FvA1kWYpnKfD5YbNt0
 DS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D5T2Uxf2pvzlQgNSYEF3ht0LNwLAYlgpi5hrr37GkRA=;
 b=oYHn2uSQH+/Gcn7inE/V5SyPH+arF5F4jXtRrMgeadXXANiLMvbfEcMFQPUeV7AFH5
 E84TEuZAfEiUeXHQAXrJxOppXYLudEyJdZIWfsckHMAEGJkFVchc40qmYoPpTYQy3NvJ
 u+zmCO48MYt2fliMdLo/zj99Uh2AarE4hP2dlhIqMHyVgd0g5+XtjNf0a8f44WbXA3J6
 r4+fUN8lCKi53wURZUgVQeb1jnzLULXzlSdAaAJOTM02MCU2cIPxBrB0RgOIqSzoFtoP
 K81PVL4gCXTB3stc/+9W3Y6V+9OcaSx9Pl4+NGUfBfTcf9vZfp5Wsuo3LEFu6U3pRBRd
 Imtw==
X-Gm-Message-State: APjAAAWhyYZWYsXboikcwA9OZLjntL9Xctm42JQ84LK3jTWWSTI9xxq5
 06SWnlz8/9rVjOwrJ7XLL9DJtA==
X-Google-Smtp-Source: APXvYqzM49uTepjuXeJZkp34ZRE7q5866HZ2LXXYjec4bp0ukiC80b9AapClXJ0hht1pT/TpSFVcmQ==
X-Received: by 2002:ac8:2a99:: with SMTP id b25mr91869588qta.223.1564676437174; 
 Thu, 01 Aug 2019 09:20:37 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 47sm41640083qtw.90.2019.08.01.09.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 09:20:36 -0700 (PDT)
Message-ID: <1564676434.11067.46.camel@lca.pw>
Subject: Re: [PATCH v2] arm64/mm: fix variable 'tag' set but not used
From: Qian Cai <cai@lca.pw>
To: Matthew Wilcox <willy@infradead.org>
Date: Thu, 01 Aug 2019 12:20:34 -0400
In-Reply-To: <20190801160013.GK4700@bombadil.infradead.org>
References: <1564670825-4050-1-git-send-email-cai@lca.pw>
 <20190801160013.GK4700@bombadil.infradead.org>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_092038_506257_2CFA4D3C 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, glider@google.com,
 linux-arm-kernel@lists.infradead.org, andreyknvl@google.com,
 aryabinin@virtuozzo.com, will@kernel.org, dvyukov@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA4LTAxIGF0IDA5OjAwIC0wNzAwLCBNYXR0aGV3IFdpbGNveCB3cm90ZToK
PiBPbiBUaHUsIEF1ZyAwMSwgMjAxOSBhdCAxMDo0NzowNUFNIC0wNDAwLCBRaWFuIENhaSB3cm90
ZToKPiAKPiBHaXZlbiB0aGlzOgo+IAo+ID4gLSNkZWZpbmUgX190YWdfc2V0KGFkZHIsIHRhZykJ
KGFkZHIpCj4gPiArc3RhdGljIGlubGluZSBjb25zdCB2b2lkICpfX3RhZ19zZXQoY29uc3Qgdm9p
ZCAqYWRkciwgdTggdGFnKQo+ID4gK3sKPiA+ICsJcmV0dXJuIGFkZHI7Cj4gPiArfQo+ID4gKwo+
ID4gwqAjZGVmaW5lIF9fdGFnX3Jlc2V0KGFkZHIpCShhZGRyKQo+ID4gwqAjZGVmaW5lIF9fdGFn
X2dldChhZGRyKQkJMAo+ID4gwqAjZW5kaWYKPiA+IEBAIC0zMDEsOCArMzA1LDggQEAgc3RhdGlj
IGlubGluZSB2b2lkICpwaHlzX3RvX3ZpcnQocGh5c19hZGRyX3QgeCkKPiA+IMKgI2RlZmluZSBw
YWdlX3RvX3ZpcnQocGFnZSkJKHsJCQkJCQo+ID4gXAo+ID4gwqAJdW5zaWduZWQgbG9uZyBfX2Fk
ZHIgPQkJCQkJCQo+ID4gXAo+ID4gwqAJCSgoX19wYWdlX3RvX3ZvZmYocGFnZSkpIHwgUEFHRV9P
RkZTRVQpOwkJCQo+ID4gXAo+ID4gLQl1bnNpZ25lZCBsb25nIF9fYWRkcl90YWcgPQkJCQkJXAo+
ID4gLQkJwqBfX3RhZ19zZXQoX19hZGRyLCBwYWdlX2thc2FuX3RhZyhwYWdlKSk7CQlcCj4gPiAr
CWNvbnN0IHZvaWQgKl9fYWRkcl90YWcgPQkJCQkJXAo+ID4gKwkJX190YWdfc2V0KCh2b2lkICop
X19hZGRyLCBwYWdlX2thc2FuX3RhZyhwYWdlKSk7CVwKPiA+IMKgCSgodm9pZCAqKV9fYWRkcl90
YWcpOwkJCQkJCQo+ID4gXAo+ID4gwqB9KQo+IAo+IENhbid0IHlvdSBzaW1wbGlmeSB0aGF0IG1h
Y3JvIHRvOgo+IAo+IMKgI2RlZmluZSBwYWdlX3RvX3ZpcnQocGFnZSkJKHsJCQkJCVwKPiDCoAl1
bnNpZ25lZCBsb25nIF9fYWRkciA9CQkJCQkJCj4gXAo+IMKgCQkoKF9fcGFnZV90b192b2ZmKHBh
Z2UpKSB8IFBBR0VfT0ZGU0VUKTsJCQkKPiBcCj4gLQl1bnNpZ25lZCBsb25nIF9fYWRkcl90YWcg
PQkJCQkJXAo+IC0JCcKgX190YWdfc2V0KF9fYWRkciwgcGFnZV9rYXNhbl90YWcocGFnZSkpOwkJ
XAo+IC0JKCh2b2lkICopX19hZGRyX3RhZyk7CQkJCQkJCj4gXAo+ICsJX190YWdfc2V0KCh2b2lk
ICopX19hZGRyLCBwYWdlX2thc2FuX3RhZyhwYWdlKSk7CQlcCj4gwqB9KQoKSXQgc3RpbGwgbmVl
ZCBhIGNhc3Qgb3IgbG93bWVtX3BhZ2VfYWRkcmVzcygpIHdpbGwgY29tcGxhaW4gb2YgYSBkaXNj
YXJkZWQKImNvbnN0Ii4gSXQgbWlnaHQgYmUgYSBiaXQgaGFyZGVyIHRvIHJlYWQgd2hlbiBhZGRp
bmcgYSBjYXN0IGFzIGluLAoKKCh2b2lkICopX190YWdfc2V0KCh2b2lkICopX19hZGRyLCBwYWdl
X2thc2FuX3RhZyhwYWdlKSkpOwoKQnV0LCB0aGF0IGZlZWwgbGlrZSBtb3JlIG9mIGEgZm9sbG93
dXAgcGF0Y2ggZm9yIG1lIGlmIGV2ZXIgbmVlZGVkLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
