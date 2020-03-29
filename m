Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B377D196C5C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8rk3paAf+LopgAWMGcoxZeOakzyZfsRYxLz/CCZNg4=; b=e5yEotw77PAG8d
	FOPLIxuJkVcSAyNItfeRBRo4sp/k4FttV2dM4sH7kb08geQT5K1M9s406tIUrC+n4Y5r1dBQIRKJZ
	Zok4AzyP8qItrVqyUteyAjUBWoonbR8S9lvjoSvEG7r/YxwTB7QXmBAYs/nLS76sjq0TCM6GT1jSF
	4TOCly6yV6ywjTJeJo7m7jXs7z0x0ZAExdVEWcgu/QARGnQcEsTkmgKkW/68jdwSny5lX+Hen6KMg
	dgl6T67AxCahng3z+RuGXFnQOFY5AQwKJiXvIF8rbclUmu6VG+TvHD7w7UOici1zTkxsKkdrdVulE
	fplb5zLRU4y/qjhheh+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIUsJ-00009l-4a; Sun, 29 Mar 2020 10:09:03 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIUsA-00009M-7t
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:08:55 +0000
Received: by mail-wr1-x432.google.com with SMTP id h15so17300659wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Mar 2020 03:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I9LZfTAUvj4l0VFm3AzcLI9QplZWD2P9UnW3NXnGF9M=;
 b=IRmzCr7QdBPOyGuZ5M1RkAwJpRbbix79U7fIQ6ghXzQ7pguJ/22GcCaC344QywSAOo
 hrHpccMZXSsfsQsQENVBc6hNyq8f9rpaKDh2WKMLKwNyYjGjx+Jz9tWGvg93kMyCYvXj
 eCA6sgxw95beYHYE2+B259K7y5jGeumGkvto/RHp9tUQ2k24zPtewI6nUR/OWfq0/z2X
 pyaIjv+9cooPvqucta+HJC7jCMH6V8tINdE+dQNlgbJD4exMQOx0IlJzGtpdnzNy7mlz
 WX18RLh7eOIi0P9Zk5wFJNlOU52lLbcGmXBfGw6lVeYm6M0o+4vI0aGp027y9NwAtL5W
 Vnxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=I9LZfTAUvj4l0VFm3AzcLI9QplZWD2P9UnW3NXnGF9M=;
 b=rDQGeQ+JDz63xedAJLZFjbDTCPp+nXxfVjmkdLMhvd8KW5RRDs/6hykUWvv5BVxWRQ
 7QNpXWODXg1DOCcF9smg2JthmMOTXFstKHUSo+CZUao4g9JotceMluP5Dc0sGtP1d3EB
 /JIPQRLvQQBr3K8NvjqCGiLyA60GDvN1rlFo74NifO09wHIDhoKh19ibi3/rNPOZw386
 f4VjoPTXVhb57M4ZTo+0zBox4sj15EWgl6qT6s2hqPXEjghX92MVRbjgpWjWp/DbsnHV
 eiPvmEnEvRTb/ok4T4iHK3lWG6jyLtectnuAFVvrm26if6rg2xGIfMRZCGcqul5MZD11
 ml/Q==
X-Gm-Message-State: ANhLgQ1j4XOIa2CeMX3or8+0beLgiuqewbqAzKFIAjoYkZl9XZrZiROB
 njcVAHNu98rg/3t//oN59t4=
X-Google-Smtp-Source: ADFU+vtLoYmfS50rmRhDXGJyAsseWR8u6C6stoPJ0RB3K2Qwq2KscVn83d0QVWvlOEyONyM+l7KebQ==
X-Received: by 2002:adf:8182:: with SMTP id 2mr8689172wra.37.1585476531346;
 Sun, 29 Mar 2020 03:08:51 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id k3sm17517162wrw.61.2020.03.29.03.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 03:08:50 -0700 (PDT)
Date: Sun, 29 Mar 2020 12:08:49 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [GIT PULL 0/2] EFI touchups for v5.7
Message-ID: <20200329100848.GC93574@gmail.com>
References: <20200329080544.25715-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329080544.25715-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_030854_287726_C3E36F4C 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mingo.kernel.org[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-efi@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Ard Biesheuvel <ardb@kernel.org> wrote:

> Hello Ingo, Thomas,
> 
> Please pull the below into tip:efi/core - it is a pair of fixes for the
> code that has been queued up for v5.7
> 
> Thanks,
> Ard.

Applied to tip:efi/core, thanks Ard!

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
