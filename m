Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2324057BCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6kFwMtjVu/mPAF+vGvH3scq47eCXfLG2qhYvuOc3PQ=; b=ptWDH1J7dC/ewq
	BnlhFjH17mSaHLe2yGnOc4ZBVMtgQg8X3X8I8VU6Br8T0dq0l4uPz60+zdc8zyVoslC61Vf664IlN
	GOnWUEO19bcOfvAfOdf37FBXgoyL7ojQKgPwTYVUCPmGxkVoyJ9r+ZRqohjldsbTXgB5UsxwGx1EC
	8CofWK7bNSVC7L7mf7+th+Vo5KO4YntGjWFT7zv/VYbdZHnXDyIjXo2HRvNn0n3eX9wYtkCIol8Pd
	KrDFLj8x4wASVfVrMYfLMXEA3sK5129TVvjevIZ/D3rsPhLyopIa4uuleHTikZs7IBUcdcX7vnU+I
	SY0WgeAx2CfCx0GiBjvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNh5-0008SY-52; Thu, 27 Jun 2019 06:15:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNgp-0008Re-2v
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:15:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so1024891lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 23:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=c8Ro+1sz0fJk4GvPtJI06vg3od+9PHgCXEuwxWQvRMI=;
 b=lUDG8pAvDccmT6uAnH7QNeff14G7sguproj73GIfBcVdC4yboikr0UX8H+6shQFejj
 +RUl/rApW0IlKXqqj7bvpwJwGgyT0w+W64SuU2K0vtOsQxwZPMj3VByqPkpJ5mCYBH8K
 4/6m4yrF7eMMOF0hHonQhLWxatww6lKL/xmfXTDX5bUScofynRv9NKCdg/O+ubmq2efc
 nKVHfgCZCJaRIHOyBrsV5o1NKukK0KSPlztbG4n9Ls9B88NhOTG7QVxoZ/D2oRA7NQYz
 52T8+bYxkdlop5CtygjX7949fMu5uw0SV6BVgws3QxxKwxleC8zn5CdXnqz9ib4Ob+o0
 ko2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=c8Ro+1sz0fJk4GvPtJI06vg3od+9PHgCXEuwxWQvRMI=;
 b=l5AQDuKayQ73cuOeW1J0xObun+lW++z94XQLoYJKERvGMYlygFBF0xpIo+4RR0164D
 MWyX95r9vcK2VaxOiiJAgdslU6i5FjKlmRfuxJL7diiotco6gFpL9Q0SazGS13vIdGru
 USYO3cklWpe9kxb0168DTZ9lvS/fhy7dEo4Sk4cGZ2/Xh6KASJl/iuhkPaDlnFJLZiV2
 NuL4ivJfxt9xsJoDxJLkWpI8MI8x/4ew1lG/QeGYNOUmEy/9sOmE7dS6NbJrVk2N4G06
 gsJCNvFTo+BilOPKfTh9nvOYqVD9OE8t7UeexdzEicq4CXMcUlKovtN4GsnDPcg0k85x
 ke+w==
X-Gm-Message-State: APjAAAXo8zipP/oo+SFGLXOMvdphSeXuXMeKAxG6aDyEqNk82Mr9twla
 dIxkFFBvIrkfIXm4cf3+lUA=
X-Google-Smtp-Source: APXvYqxSo1JskesriVou2jf2BX7fNXJE47AL9FBximlWQ57Ug61BHiK+UIsbLvXgOvpGCv0NwiRbHQ==
X-Received: by 2002:a2e:80d6:: with SMTP id r22mr1400616ljg.83.1561616121388; 
 Wed, 26 Jun 2019 23:15:21 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id m17sm181953lji.16.2019.06.26.23.15.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 23:15:20 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 4/7] serial: imx: set_termios(): preserve RTS state
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-5-git-send-email-sorganov@gmail.com>
 <20190627054040.fmox5woti4gztmat@pengutronix.de>
Date: Thu, 27 Jun 2019 09:15:20 +0300
In-Reply-To: <20190627054040.fmox5woti4gztmat@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Thu,
 27 Jun 2019 07:40:40 +0200")
Message-ID: <874l4bk0zr.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_231523_159573_1E07DA7F 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNToxMTozMFBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gaW14X3NldF90ZXJtaW9zKCkgY2xlYXJlZCBSVFMgb24gZXZlcnkgY2Fs
bCwgbm93IGZpeGVkLgo+Cj4gSXMgdGhpcyBhIHJlYWwgcHJvYmxlbSwgb3Igc29tZXRoaW5nIHlv
dSBub3RpY2VkIGJ5IGxvb2tpbmcgYXQgdGhlIGNvZGU/Cj4gSSB0aGluayBJIGFscmVhZHkgYXNr
ZWQgdGhhdCBpbiBhIHByZXZpb3VzIHJvdW5kLCBpZiBzbyB0aGlzIHNob3VsZCBhdAo+IGxlYXN0
IGJlIGV4cGxhaW5lZCBpbiBtb3JlIGRldGFpbCBpbiB0aGUgY29tbWl0IGxvZy4KClllcywgaXQg
d2FzIHJlYWwgb2JzZXJ2ZWQgcHJvYmxlbS4gRXZlcnkgY2FsbCB0byBzZXRfdGVybWlvcyBmcm9t
IHVzZXIKc3BhY2UgKHRocm91Z2ggdGNzZXRhdHRyKCkgZnVuY3Rpb24pIGNsZWFyZWQgUlRTLgoK
PiBBbHNvIHBsZWFzZSBub3RlIHRoYXQgdGhpcyBpcyBhYm91dCB0aGUgVUNSMl9DVFMgZmxhZy4g
KEl0IGlzLCBpc24ndAo+IGl0PyBJIGRvbid0IHVuZGVyc3RhbmQgaXQgYWZ0ZXIgc3RhcmluZyBh
dCB0aGUgY29kZSBmb3IgYSB3aGlsZS4pCgoiQ1RTIiBpbiBpTVggdGVybXMgbWVhbnMgd2hhdCBl
dmVyeWJvZHkgZWxzZSBjYWxscyAiUlRTIiEgUGxlYXNlIG5vdGljZQpob3cgdGhleSBhcmUgdXNl
ZCBpbiB0aGUgZW50aXJlIGRyaXZlciwgZS5nLjoKCgkJaWYgKG1jdHJsICYgVElPQ01fUlRTKSB7
CgkJCXVjcjIgfD0gVUNSMl9DVFM7CgoKPiBBc3N1bWluZyB0aGlzIGlzIGEgcmVhbCBmaXgsIGl0
IHdvdWxkIGJlIGdyZWF0IGlmIHRoaXMgcGF0Y2ggY2FtZSBmaXJzdAo+IGluIHRoZSBzZXJpZXMg
KGkuZS4gYmVmb3JlIHRoZSBjbGVhbnVwcykgYW5kIHdvdWxkIGJlIG1vcmUgc3RyYWlnaHQKPiBm
b3J3YXJkIHRvIHVuZGVyc3RhbmQuCgpJIHJhdGhlciBiZWxpZXZlIHRoYXQgcHJlLWNsZWFudXBz
IGFjdHVhbGx5IG1ha2UgdGhlIGZpeCBtb3JlCnN0cmFpZ2h0Zm9yd2FyZCB0byB1bmRlcnN0YW5k
LgoKVGhhbmtzIQoKLS0gU2VyZ2V5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
