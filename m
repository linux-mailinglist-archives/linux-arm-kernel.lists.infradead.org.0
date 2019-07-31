Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4258D7C45D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxqQrhKbiXiozwUq+cA097q0dLEoa52x41Fa64xxccM=; b=GsKz2P0lCKlY0x
	1J4tyl4z56XIF4wTpN2sREryRQbShFMBMmCXqQQjP3KznIk2yEogp6MBe/hQbViyK3hyPFhx4ABww
	9Uh4vbPQQ5ZD3aZ1t3ENIu98wGvJ+PUYQaTQ7CczdnYn42z0J8FGLdPb1RgulsXLlCl72NqoALhaO
	xNwJ66CJ9d9I+5CoFb9b6dnf4v6eM9AKpznEzd9y6SJ9eGLGXeEmiG875fgKLN3ZUxLkHTlayVnf2
	76c7sxt8Mp16XD/dXjyVU0/71K8dUPdpM8RCghiyt0MZYS4t0Rjw8sBZMJL+Sl2bzhKt4+m0jDVtL
	vPtLeBKdCizvhOHNt2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspGq-0001sY-GF; Wed, 31 Jul 2019 14:08:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspGj-0001rj-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:07:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so31931722pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:from:to:subject:user-agent:date;
 bh=HnxpbXM5FXYu5TGRW7msWD3j45cMinExmwyTlbdvq+4=;
 b=Wt3Tf57WCZo+rUEDJ3jbZm7OQkvi7Dtk7RSMqczyM0hXLVxoOk8PoSsovHOnYzhWKt
 tXnGleVn3bCBrk22K8az/gtarGktHc+5Rec6cdOHtQjEEYdna1TSxVzVqIkAmnBZ5dgA
 xKT27UQ2ZHcR0F6jt6HpVSpb3e7tHD2O6tzAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:from:to:subject
 :user-agent:date;
 bh=HnxpbXM5FXYu5TGRW7msWD3j45cMinExmwyTlbdvq+4=;
 b=RBSawEA8fKo5BQTRVHcrAPeOrJHjfw1DXZoxicbgdVYJy3udHU8+jkv7rQw2ZRU4AC
 +Rrt5Dc7yy7sOTUzR2YVXhxJiZldJRi31RWM0XOFXSeQ2J09bxAy7Cb0cqbQC6aRXaOC
 ekF47t+lRgbLgwUf+kRRkIzf09eT+WV7tQ+IJNgDwKnCZKI3ZAOCG3I0GpuEFQfhkuW4
 1AHxSl5p5sB6cgH3JJVbz8GZ5O8efe/F+8pTuKCcHJyrGr+tXamv5RgYLdL3oqdJzJf0
 I1mx+xYJbojn1Mg84kKz6DcdYh5+c9LSZw/n3cR7W+WObatQQqPcElqmeXfucsFSclC3
 tqFA==
X-Gm-Message-State: APjAAAWvwUlecr8uNLdUI0IYYqpDNnK4xake5hru2rEvzd78oAGO1m72
 6biP4fttiNRUKl2lytZ6g8Qu/OG8PvIxdg==
X-Google-Smtp-Source: APXvYqxsFQ252Xkfi9cEcbNTq50MLLf0fS9QQFo3WFhjQHY7txjaCoXt/b2BFl2SUn4vSdmAr9ZTiQ==
X-Received: by 2002:a17:90a:f98a:: with SMTP id
 cq10mr3205995pjb.43.1564582071848; 
 Wed, 31 Jul 2019 07:07:51 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id w14sm76786272pfn.47.2019.07.31.07.07.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 07:07:51 -0700 (PDT)
Message-ID: <5d41a0b7.1c69fb81.fdf43.82e9@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190731084056.jd7p5lrvyun6ynlf@willie-the-truck>
References: <20190730181557.90391-1-swboyd@chromium.org>
 <20190730181557.90391-33-swboyd@chromium.org>
 <20190731084056.jd7p5lrvyun6ynlf@willie-the-truck>
From: Stephen Boyd <swboyd@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 32/57] perf: Remove dev_err() usage after
 platform_get_irq()
User-Agent: alot/0.8.1
Date: Wed, 31 Jul 2019 07:07:50 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_070753_173780_EDB2EB83 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Will Deacon (2019-07-31 01:40:57)
> On Tue, Jul 30, 2019 at 11:15:32AM -0700, Stephen Boyd wrote:
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Please let me know if you'd rather I route this via the arm-perf tree.
> 

Yes, please route it through the arm-perf tree as v5.4 material.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
