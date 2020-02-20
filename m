Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD9165FFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPrd0dWubaPo1zuv0N17oPJvZ0t9Nj7IXIJVnL+kdVs=; b=Mt7+sAq++LHBDU
	q9S8m5vRoaGdArvFEHDMwADcY0lYeWYHo8kZCxO7o8+oz1c+AEe888PS9/M6Kxr3IaKb1nKpUlddp
	Jyb3gsd2PnrkQAS/tIHh1y8uCbM/tftNg6Xu3RO0kQUk9dKSQ3MpzW2TBnp5Ij1l/h58Jvcup0hvb
	kxo2N45GGXKh3KSWQPuwTkjujHr3u6PBIkg+HcKzG+9HRfJSrO23skrVYchMeq7x+iPjv4qC/tPpL
	8IuKHm4UveT8Gikc0kYN5V1sUmSs7p6pTe2/lIiK4GRomBqqPpJ/5WmgVzZlAG15sUjbXLrjrDCML
	BcMNg2y3b8n78lmGULNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nAK-0008Hc-18; Thu, 20 Feb 2020 14:51:00 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nAB-0008HI-KH
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:50:53 +0000
Received: by mail-oi1-x241.google.com with SMTP id p125so27754330oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 06:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YCUtEJ53m7ECqKK3AgOl0cehXlRW5Bi+qbeZF5u/cGo=;
 b=Gd03US2pURX3tpufgzIPcsHuU48CBvPuzbG655N2Rz5c8F5EN+JlwQ/u7fwPId6h+x
 4avt70bXWtqp5kBm/zeBhactVQPHjBYvvjBQNQHHvh8e1LjTYa/hY7ZnnnHOJaSwBhVN
 fGz7P6w3RiKO3Ah2aRV3b8idbHoM18Dy/IU9gBB58IBVnT1kuN527PmePh2f+PiRQR49
 xIqlYaHSB/0U/XlCNevbLJ5DonSQCqnYTXeLeW7wG86TVQshq7jdvOAnN7zeB40cHas3
 pPDL90ukHRvLiGpP2fZstQy40PJhSwSRtfizQp0ZioDoSfzwWOGnGtjVW0F/f8LnsRhZ
 9oqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=YCUtEJ53m7ECqKK3AgOl0cehXlRW5Bi+qbeZF5u/cGo=;
 b=CrLQvXABuLsQGD+oUftGtLvrBKiOXkfznX3RXWO6BflG3ifXIg7eUWp228UUobSrtW
 sXyITUJDLsttVs4UxkrkpkKky61W/dNR16ua2wGWLr5Eo4E0Wy5SnCe8n+Mtj6ed6wFb
 hJ9axOq2DPoX6/2QLo26+5LiHrNA457S7Vvooi663hrddP1HbI7zBjTzd8xLlBkzoFUp
 WMFLXHYCBFxoPjwVr9GjmWkAHCyPDhdne+nnQF24DQ3mUudA8Sd3KO0oJ4WwI5DeCNom
 LV3FjctImHpblQFRjuq05FVP0AIA/2Wh1TqHQ5dLYQ+M1YDHiVJpRF9+/1GDK+1toMG7
 ELzg==
X-Gm-Message-State: APjAAAWqJ8oqcQE/8iUgp1/1mgSg+kuu8vRgwf5477MFhmeKwFZScyJI
 2GSNRIN7q9RFIGpsNWbmz89o47w=
X-Google-Smtp-Source: APXvYqz8I33kaCgp3GTwzmzy/RMDIMTxVe9rD7G20HB79+/6QsGE8/hYgj8DFw8sqYbzLba7cziyNg==
X-Received: by 2002:a05:6808:18:: with SMTP id
 u24mr2347495oic.10.1582210250197; 
 Thu, 20 Feb 2020 06:50:50 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m2sm1171204oim.13.2020.02.20.06.50.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 06:50:49 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9129:b2b8:445c:a4ff])
 by serve.minyard.net (Postfix) with ESMTPSA id 3AEFA18000D;
 Thu, 20 Feb 2020 14:50:49 +0000 (UTC)
Date: Thu, 20 Feb 2020 08:50:48 -0600
From: Corey Minyard <minyard@acm.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200220145048.GH3704@minyard.net>
References: <20200219152403.3495-1-minyard@acm.org>
 <1416dca51b52dff349923184f41d48e8@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416dca51b52dff349923184f41d48e8@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_065051_692149_A3B274A2 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: minyard@acm.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 02:21:36PM +0000, Marc Zyngier wrote:
> On 2020-02-19 15:24, minyard@acm.org wrote:
> > From: Corey Minyard <cminyard@mvista.com>
> 
> [...]
> 
> > After studying the EL0 handling for this, I realized an issue with using
> > MDSCR to check if single step is enabled: it can be expensive on a VM.
> > So check the task flag first to see if single step is enabled.  Then
> > check MDSCR if the task flag is set.
> 
> Very tangential remark: I'd really like people *not* to try and optimize
> Linux based on the behaviour of a hypervisor. In general, reading a
> system register is fast, and the fact that it traps on a given hypervisor
> at some point may not be true in the future, nor be a valid assumption
> across hypervisors.

Normally I would agree, but I based this upon git commit
https://github.com/torvalds/linux/commit/2a2830703a2371b47f7b50b1d35cb15dc0e2b717
which seemed to say that it was a significant enough factor to do in the
EL0 case.

-corey

> 
>         M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
