Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5E21C67B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O2n7lZpCKB+0muMOj2Xj4ys+JGQKQGDgh2vXeLbVow=; b=VMyu9j0YMqANR5
	g4mazCnvtaX5cEEnAlh7xn/tnqkr6szF2tF/GU/QdPvBXV1s7NcOn5v5GhmNexAjPHTDwXrwHaG33
	whND/DAn9nFixeS4hW8DFXb3n3n1po9mOqj3i7Ih0NqNZ3PpIceTDQ4hNf0f/nQf62ZJ3Ypcej/44
	XNvvVjCuovj90FLFxmDnP4X+5iGcF6jVJe/U7C1x4Pp1iCUviMnWr6TlG+5RhZFhwFVwtrSBTSBdi
	wMl4/0724XXi4b1oW3yKp+d7JUn+LyHy+3iSCmFlKhdRa0cSRdYEvqQQUe77tXvv88xsqGfsLccsv
	ZTv6+bnFV2fbzu+IBNMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWD07-0000d4-SD; Wed, 06 May 2020 05:53:47 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCzw-0000bM-Cd
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:53:37 +0000
Received: by mail-qk1-x744.google.com with SMTP id b6so784805qkh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=22ofnai8Kmb8nUlZsIXdX+pSRFQQCaWUWDTVletlIn8=;
 b=bHT6W/fWOA40fzVohmqwgewBY83jYMapJYxNmoWYZVRhjvCcN/uCGzLtu9ZZpjegPt
 Q5UbabCAQpEu6VOQ2/0bfia7psVZhQGM9SB5PDcKKTxpXQn9IS3XpkRWbxDGHYQAG7N1
 ovzcSLqAS+e8Fw4CCoKn+w1qIPMvetUcoab0V7CJoEZh64Q5tvUMem8gw2iKrTYXkngI
 YqVYPnFDEVpL7n0s2gMY4wNqTWgAriIEJAvPIW46iz2mFzAkM75yNUg8U+l18gc8m3i9
 irKLWLsMowcpjqZtMkd8CoZmJ6mEW1aJe6aQcZk2+U4qiUPJRXSGghS4vawiCrNLWoCM
 CvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=22ofnai8Kmb8nUlZsIXdX+pSRFQQCaWUWDTVletlIn8=;
 b=kGyF5TSPBxjT5St+5GOuNS1yWKn6DYfUo+x1IdE9YG6SH6CB2ISs+kLxe9+MHzb9xJ
 Hd4CuBGBxr8LTbP8kAHUmJ4qec9difVewcVaRDbYpvSikpWuvT9roXXGD6LjID7wAVLj
 aVguWTsuFTcPFcgiZSSn/D8y4vi44WttSYDxNEM9AK37g0nsDsWSUVmsQXxSO0EEJS5T
 E8uNBJXm9QTPfzVTYfvc7nPKkKyTWP2uMsSYjLWiXONupTRc4Mv3rN1JyvfFBvaEDhHc
 BL8Z4nHxdBrZHU2YXwQyNepAmRIP/6GNNXoSFeBp6CCLvdffzXqL8n9YTVNISyNlaoxc
 0F1g==
X-Gm-Message-State: AGi0PuaVpSNhQs++T5xk5XM9hXOWEj1v2mOEsQ3B9SKI38hnK6kgtyn/
 d7l+hDMl1RB05qZZsQTylUktAQ==
X-Google-Smtp-Source: APiQypLikjqrC0WTXdzYihbO3/y7LWLnb+LLpLiSTCvKKz620VCQubf/5jDWJa4A3ZgrSWfdszM/kA==
X-Received: by 2002:a05:620a:a12:: with SMTP id
 i18mr6804658qka.316.1588744413624; 
 Tue, 05 May 2020 22:53:33 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id p31sm706132qtf.11.2020.05.05.22.53.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:53:33 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 0/3] kasan: memorize and print call_rcu stack
Date: Wed, 6 May 2020 01:53:31 -0400
Message-Id: <2BF68E83-4611-48B2-A57F-196236399219@lca.pw>
References: <20200506051853.14380-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200506051853.14380-1-walter-zh.wu@mediatek.com>
To: Walter Wu <walter-zh.wu@mediatek.com>
X-Mailer: iPhone Mail (17D50)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_225336_455128_235D1A2A 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, linux-mm@kvack.org,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSA2LCAyMDIwLCBhdCAxOjE5IEFNLCBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBt
ZWRpYXRlay5jb20+IHdyb3RlOgo+IAo+IFRoaXMgcGF0Y2hzZXQgaW1wcm92ZXMgS0FTQU4gcmVw
b3J0cyBieSBtYWtpbmcgdGhlbSB0byBoYXZlCj4gY2FsbF9yY3UoKSBjYWxsIHN0YWNrIGluZm9y
bWF0aW9uLiBJdCBpcyBoZWxwZnVsIGZvciBwcm9ncmFtbWVycwo+IHRvIHNvbHZlIHVzZS1hZnRl
ci1mcmVlIG9yIGRvdWJsZS1mcmVlIG1lbW9yeSBpc3N1ZS4KPiAKPiBUaGUgS0FTQU4gcmVwb3J0
IHdhcyBhcyBmb2xsb3dzKGNsZWFuZWQgdXAgc2xpZ2h0bHkpOgo+IAo+IEJVRzogS0FTQU46IHVz
ZS1hZnRlci1mcmVlIGluIGthc2FuX3JjdV9yZWNsYWltKzB4NTgvMHg2MAo+IAo+IEZyZWVkIGJ5
IHRhc2sgMDoKPiBzYXZlX3N0YWNrKzB4MjQvMHg1MAo+IF9fa2FzYW5fc2xhYl9mcmVlKzB4MTEw
LzB4MTc4Cj4ga2FzYW5fc2xhYl9mcmVlKzB4MTAvMHgxOAo+IGtmcmVlKzB4OTgvMHgyNzAKPiBr
YXNhbl9yY3VfcmVjbGFpbSsweDFjLzB4NjAKPiByY3VfY29yZSsweDhiNC8weDEwZjgKPiByY3Vf
Y29yZV9zaSsweGMvMHgxOAo+IGVmaV9oZWFkZXJfZW5kKzB4MjM4LzB4YTZjCj4gCj4gRmlyc3Qg
Y2FsbF9yY3UoKSBjYWxsIHN0YWNrOgo+IHNhdmVfc3RhY2srMHgyNC8weDUwCj4ga2FzYW5fcmVj
b3JkX2NhbGxyY3UrMHhjOC8weGQ4Cj4gY2FsbF9yY3UrMHgxOTAvMHg1ODAKPiBrYXNhbl9yY3Vf
dWFmKzB4MWQ4LzB4Mjc4Cj4gCj4gTGFzdCBjYWxsX3JjdSgpIGNhbGwgc3RhY2s6Cj4gKHN0YWNr
IGlzIG5vdCBhdmFpbGFibGUpCj4gCj4gCj4gQWRkIG5ldyBDT05GSUcgb3B0aW9uIHRvIHJlY29y
ZCBmaXJzdCBhbmQgbGFzdCBjYWxsX3JjdSgpIGNhbGwgc3RhY2sKPiBhbmQgS0FTQU4gcmVwb3J0
IHByaW50cyB0d28gY2FsbF9yY3UoKSBjYWxsIHN0YWNrLgo+IAo+IFRoaXMgb3B0aW9uIGRvZXNu
J3QgaW5jcmVhc2UgdGhlIGNvc3Qgb2YgbWVtb3J5IGNvbnN1bXB0aW9uLiBJdCBpcwo+IG9ubHkg
c3VpdGFibGUgZm9yIGdlbmVyaWMgS0FTQU4uCgpJIGRvbuKAmXQgdW5kZXJzdGFuZCB3aHkgdGhp
cyBuZWVkcyB0byBiZSBhIEtjb25maWcgb3B0aW9uIGF0IGFsbC4gSWYgY2FsbF9yY3UoKSBzdGFj
a3MgYXJlIHVzZWZ1bCBpbiBnZW5lcmFsLCB0aGVuIGp1c3QgYWx3YXlzIGdhdGhlciB0aG9zZSBp
bmZvcm1hdGlvbi4gSG93IGRvIGRldmVsb3BlcnMganVkZ2UgaWYgdGhleSBuZWVkIHRvIHNlbGVj
dCB0aGlzIG9wdGlvbiBvciBub3Q/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
