Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54419A96F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 01:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mSVH0nZZbL3fPKyB6rRO//yKDUqh72m7LAvX150C6Q=; b=af57DYD+NumoQh
	iHeNEdNTyGKpo9rnJ8gsbI4ovVWZzh4wbRT8mWuwADfVzivD+GcTqRf/6IqDDmd+t92JblhF7uhz8
	XMQoTGfgOEBmToaahkj5sF28sRxersfJI7xZEsv1L+Hh4mYuDn0yLAXtJhA1Ljcdw1XNomUWv52Dc
	sZ9FcUWO8MZPJgEKW4K97VYxJfECg9p05MwgG5cLMSsk2NCq562sw9cjsf7GgMuvgzm4QC7hdocXW
	Cl2gxGh5T96Sz39ssCd4ZrkqWsG+2rY2av+JPpXW04pJ03XZb74dJIG9vRmOh9TiMrN1eNIs+/ui9
	XU4csmrMEBiUsMFuOfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5eXO-0007nC-AA; Wed, 04 Sep 2019 23:18:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5eX8-0007iy-89
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 23:17:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so417564pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 16:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=9R72raBBWXijV+vBxS2q3Hmwuxv9Ffre6Ti1aTb9Nhs=;
 b=AKGsaHbLbruRWWZut5eEkFINbN1RAtp5Gc5P4ly1St6QoLFKbCCPMk1sCW6yIOJmU8
 tgKoh4yl45sNzYiOglayAY5CL082kzY1Wz8BajqyKCYe1j0o1iBp/BhUdx4PkdtJovlo
 gddskujNDf7UReyFhrKEXjpli2ejZeidxVi5sNsASu+MTUwt9s+GokTa7o04VKCCSNdO
 iSW3KLaJcTPQwfTyiUfH3u2uJFmwy2eDCGEbwP3ASCSTqzfC6REQqGAEyEVeGHMcL673
 sknyKtVLzla3A9W1v0ng4vS31x4w609YoumtFD6i0+aCcpwFyboKpck83kPrsJKNAGOV
 mJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9R72raBBWXijV+vBxS2q3Hmwuxv9Ffre6Ti1aTb9Nhs=;
 b=KQXleQFXpKWZrN7d1l46r/q/sUsQ0Ci6SBFvaXmGIRyBz5TXW+T4sCzDhRJssZLSal
 k2Qu5AU6BFyEGiKVFTqnAC77+gW9zAkLr9jITEzJlJNj/zjXyAzYXsSNpilloO+EH0SO
 h0uVBYKDx0Iv97X314OaaqteAXwdORvbqzIrp75p+jBNra8cx1/bmJciIQ5Y+ufzCtRu
 XYAjHgEjqdrJVMjLIldgEC1dZUacJQ6MlQxWipbChvkfpZK6w7viZA/xO+anCJOf4aBd
 TGu3fP//6khDp/BXnGb+8nGvZ60m8sNsnSFroGp8jrkpaBDhyId0VWL1CnjtTbzF8VjD
 nyBw==
X-Gm-Message-State: APjAAAVlFqUuTDxUyYjDyREgOeuTtJiu0A5QiVRwFNV/NglMEPN1ZUgr
 +oQJflkmVXryOYfxz0dbWb0=
X-Google-Smtp-Source: APXvYqxL8pWcjEkEVw7JhxurqlWcxCeyoZCsxf01cpuezRH1sJw82JW4DIXFjVgtu+WiHE3w/hwa3A==
X-Received: by 2002:a62:168e:: with SMTP id 136mr232320pfw.144.1567639069538; 
 Wed, 04 Sep 2019 16:17:49 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.googlemail.com with ESMTPSA id r1sm177579pgv.70.2019.09.04.16.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 16:17:48 -0700 (PDT)
Message-ID: <dd62da5f10c06fae1823bf8338c2acc83fe40a40.camel@gmail.com>
Subject: Re: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
From: Rashmica Gupta <rashmica.g@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 05 Sep 2019 09:17:43 +1000
In-Reply-To: <CAHp75Vd_6Rpt5=BjzV8YFCiFP7qsRrYHHo7+=gWwnZH-zT9jNw@mail.gmail.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <CAHp75Vd_6Rpt5=BjzV8YFCiFP7qsRrYHHo7+=gWwnZH-zT9jNw@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_161750_339405_9C965EEA 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 19:27 +0300, Andy Shevchenko wrote:
> On Wed, Sep 4, 2019 at 9:14 AM Rashmica Gupta <rashmica.g@gmail.com>
> wrote:
> > Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')
> > 
> > Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> >         /* Allocate a cache of the output registers */
> > -       banks = gpio->config->nr_gpios >> 5;
> > +       banks = (gpio->config->nr_gpios >> 5) + 1;
> 
> Shouldn't be rather DIV_ROUND_UP(nr_gpios, sizeof(u32)) ?

I agree that DIV_ROUND_UP is the right thing to use here, but wouldn't
it be DIV_ROUND_UP(nr_gpios, 32)?

> 
> >         gpio->dcache = devm_kcalloc(&pdev->dev,
> >                                     banks, sizeof(u32),
> > GFP_KERNEL);
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
