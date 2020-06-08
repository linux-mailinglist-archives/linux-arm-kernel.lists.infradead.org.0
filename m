Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86B71F1BE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i73bOqoRRr6xTGxAldJJgu1riUm9gW0iSxEgxdwJcoA=; b=kEvz1swuaotJCf
	Cc7ftda2vLqJ+Layev1zymZS8P0mR0WYyb41aVZTGv+WXDveeBI3NQ6VWnt47bPsUoxn1AyelZvib
	NdTGk3+IQQ5rYEQeaXtKX7fZTzv0sspw3rQQ60SdAf9/zV9TJUEhLppTCjRsFSosC+rBZZ9K5899D
	nJ7gn2XPiaycXIMON9d65v+lZNv06WQDiGn7oK6/YOUU6BP5UBVklwuk6zlrFyxv5d/cZ5wa0opKF
	uRwazp02quFKODyMNW5kjLhob1QKxUMcflVfiK28Y9e26gJfygtMhe3HmctPigJOEjUGvoosAP4zw
	AI63FEEiEwow65m2s+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJWt-0006zr-HR; Mon, 08 Jun 2020 15:17:39 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJWl-0006zV-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:17:33 +0000
Received: by mail-pg1-x529.google.com with SMTP id t7so8903825pgt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 08:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RWmFg/FpOXpC8fC4p5EowACnCJsVRXBo99Iac+1RUe4=;
 b=BEEjtcL9BiUhCC2pxnlGAkadTKNs4w++y/f3l+KLZu0KfEVRUYhdHhfTSjiwJBuSNF
 aEbVyF4z44sFB9n5JV8Cl2s7WnDE2WViyJbgP0a0VkWgXG7T4CEbIh1guLuHAJi+fHkD
 grJvKw1Bbp28FedBNkTUbE/VbdS3nz04+ortAK5BdrR+K+jv/weK5D/LYbuTsHbaR6Ug
 Sp5lI/Tu6gYx3g2e4DiGKtUCBKE/m09Bs1ED3hwEK5d7rDxitnBfgt0qqlk2C+2NdApu
 x7yqu2F2CMXYIsCE3HQBCfXO2eYdz+Q2xY18G1vb6Jx8WOOm0T5QBo7O0xLJ1652y9ku
 eAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RWmFg/FpOXpC8fC4p5EowACnCJsVRXBo99Iac+1RUe4=;
 b=hgfo1lc2EBpNs9FWEnul8A4j/5hmBy7J8T2sKX5Z3dV1PWt9Ves4Sh0b29AVY9By0y
 LWswoWeJI9gkfJogcDoMmJu9/EwbUjM+8Z07z2KzCC2sABer06e8376UOUA8wyqFAt8q
 6zEHd7hJIw1bYl2IeqURxouClgN2pl01ugH7plnZH9sXtHThsFy5w28CVvE0fuG/t5km
 M0sVJ7NeSnRHrayo6du/GOzddncq5cPe/v4PDGA9mFCaObEht6Uv5JesHw/4uMj+5DVb
 H0eMcSpWTLKsKQwM9mo16gRKhfJ8Sld8s2cxZVetz4fynvzVfs9B92ZIzz+2P7YfFnUm
 S4NQ==
X-Gm-Message-State: AOAM533JZjHubkKsWqoCm0HJ12KY+E2GMVAflG6vAZSwfELGZWIVoGvM
 ECdAN9BCeCVVLgEiBjqgh6ljTwcZ
X-Google-Smtp-Source: ABdhPJwyn3PPSJoUHGmcph7d+thdSZ03s3peWqRUfw2HhvMN43yq/Jf6zUbQlYGJTBjo1wIZbXB4PQ==
X-Received: by 2002:a63:4b0a:: with SMTP id y10mr20731564pga.57.1591629450583; 
 Mon, 08 Jun 2020 08:17:30 -0700 (PDT)
Received: from localhost ([49.207.54.212])
 by smtp.gmail.com with ESMTPSA id h20sm7391252pfo.105.2020.06.08.08.17.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Jun 2020 08:17:29 -0700 (PDT)
Date: Mon, 8 Jun 2020 20:47:27 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200608151727.GA5017@afzalpc>
References: <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
 <20200608111834.GB5736@afzalpc>
 <CAK8P3a1q51=_DUS1A8k67c3TyQ+7LTpeo98LmzoFK=qg+8Fktw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1q51=_DUS1A8k67c3TyQ+7LTpeo98LmzoFK=qg+8Fktw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_081731_975861_65B2E9F0 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 08, 2020 at 04:43:57PM +0200, Arnd Bergmann wrote:

> There is another difference: get_user_pages_fast() does not return
> a  vm_area_struct pointer, which is where you would check the access
> permissions. I suppose those pointers could not be returned to callers
> that don't already hold the mmap_sem.

Ok, thanks for the details, i need to familiarize better with mm.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
