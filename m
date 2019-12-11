Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181AC11B9F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuqSNUjFwy6C3YNXvO0LhZIaUBjJACvD2bkkd8nieC0=; b=KKyUKYB8yQiat7
	f4kjKcmcGkQZKqBAkYX0Y08QKOaLKvZET03m44cH1kIGIeJ1eVOL9cX32mK0/85zrr6UTNVjIxo/a
	POlXPOWg6Bzbs+krrjEDv0ekv5lPNEeeTEUMjKMmL+MqZOKIT+gIrUTbmI6XlCdnu6zw3KjEDnnsB
	tMVPIbbFTVHL9jIlchnRoc3YJKB1NObOfBRAsoM2SN+tg1L6itMrBBqUI302AMeegMB/pLN2fp6LF
	gaZIlykGV7XUO0+rUhQio8qce16BLwJqZJ7ezbiCzdJOngFNm9ozcTRSZ+8D3J+BqfRdjE7GnfDIJ
	ZsjhGX4K1Hur+AIPlW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5eP-0004vt-H8; Wed, 11 Dec 2019 17:19:49 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5eF-0004uc-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:19:40 +0000
Received: by mail-qk1-x741.google.com with SMTP id t129so15301797qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 09:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=KG1B1/XNdtFtj52rr+keQdkSlXVNtixvd3xO9+2XJ3g=;
 b=rPdOmD+9MCriMKlGpN93RjC2asNR0TjQF5EX6nSzzBHq+kSTO1lDDr7cicx5REQ3pD
 8KA2llMqbpABZbkxF60kjsQjTbbbrkzVY4smbkHgkWr7VoiEPxnBUS3FwYduw/17QxG3
 6GXpRv5e3ru8+IL6BhxkZaq4+HGxjs1okYOqaQIFGo6QgjZrKVx9vJzKGpTWDW9zkwHI
 8uyYpUr0hCuWXLMhTzkMMk9nMVYLJD8SPxV/Imhe2pZb64yY5qsJzCD8iQI3Hx7Wmrgx
 V1zMmPLQEuhnOhtLfuZQ4Lh63s/P1jeYhrG8hpEF2xLGHZnOFuzj/QPhRo1OQoiz7AHo
 WzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=KG1B1/XNdtFtj52rr+keQdkSlXVNtixvd3xO9+2XJ3g=;
 b=L5LZcx+KBZ2XVBbYG76s9vGeXcLKJ+huZ7AeRh93XRDwKOP/cqFBqAoQdFc5Sm/08Z
 0ZCKjerMfT5fEbleuhpNo38E2noH8n/kKu/ra+UZ50dp07s65siawch+sHotoUbcady5
 iCgZO9Tp/XI/aqGUdAGI1IsU+h4Dw7mEL+LSDvFi+viXavznvng2z/GaLRlXIMT0dP96
 3yHIkxXLTHpONUz11vlK2gu5zZbY9PRzGw6Pqlzce5X1T9jqXorMUjpIzISee+FiYqEn
 EzEU+HK1Upj/AowsboBixat7vyVTeT6nFEnJNKq83ikKe5e8G1Vv85+4oBBflYZGDgIk
 uWyw==
X-Gm-Message-State: APjAAAXRZUVyAv86KjqbELRVthrxfd/4QOV489ZnkRvY5aJUWptyIgNh
 w/0PqtCkeMkgwO+lArg+iJv8dw==
X-Google-Smtp-Source: APXvYqziSQ2OU4OXjzdNoNYeczSwDlStzGJAob4piuigMuCkjbj07ZxDhMEWk9MKjPgnwpfe9JISVg==
X-Received: by 2002:a37:27cc:: with SMTP id n195mr3658562qkn.428.1576084776776; 
 Wed, 11 Dec 2019 09:19:36 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id r5sm849819qkf.44.2019.12.11.09.19.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 09:19:36 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v16 13/25] mm: pagewalk: Don't lock PTEs for
 walk_page_range_novma()
Date: Wed, 11 Dec 2019 12:19:35 -0500
Message-Id: <728FAC8D-AA0C-4326-8990-A3D5D0DA1EE5@lca.pw>
References: <e0fd5594-fb4e-9ead-e582-544f47cb1f8b@arm.com>
In-Reply-To: <e0fd5594-fb4e-9ead-e582-544f47cb1f8b@arm.com>
To: Steven Price <Steven.Price@arm.com>
X-Mailer: iPhone Mail (17B111)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_091939_731374_364BDA64 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, kbuild test robot <lkp@intel.com>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 =?utf-8?Q?J=C3=A9r=C3=B4me_Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 kbuild-all@lists.01.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-kernel@vger.kernel.org, James Morse <James.Morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Dec 11, 2019, at 10:54 AM, Steven Price <Steven.Price@arm.com> wrote:
> 
> I believe this is a false positive (although the trace here is useless).
> This patch adds a conditional lock/unlock:
> 
> pte = walk->no_vma ? pte_offset_map(pmd, addr) :
>             pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
> ...
> if (!walk->no_vma)
>    spin_unlock(ptl);
> pte_unmap(pte);
> 
> I'm not sure how to match sparse happy about that. Is the only option to
> have two versions of the walk_pte_range() function? One which takes the
> lock and one which doesn't.

Or just ignore the sparse false positive without complicating the code further.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
