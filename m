Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D831E0D73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CnYN6FK+CIoW9y4T+lxL24YPzLXp4Q4938Vnw1xXd0=; b=ucB4UKYoafxs9f
	HNs+s7H8Prz63fVZK46WYU8uszy4JH7snCF8BB2f95kKET9cCMmFUP1RIiOfJyPz9nriRUUIj8dNG
	bmHeQ4TFwUeQzUp3OItByDPPu31fAUyb6Y1MvnGXIA9rNhvIXHdaWg1fWlPCI91DsWr4Mbi5uOsuI
	fcOM+usZFof7aYF9pwsXy2gyFaaxKAmKGANs9vf6N1rFIYId9NnzVkxe5jUL4fuG9Hnhf3aDqFXL8
	pc9wBsq9aXa8wMPG6YHdYmYCrgpSUfzjixmeqmJK4uEM3XLPPeCVqnLrPKGbHwwHqYkjw1i7q0Sfq
	FCSkc0A6FB1B6hm3HzpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBRh-00070J-35; Mon, 25 May 2020 11:39:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBRX-0006y1-4j
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:38:56 +0000
Received: by mail-lf1-x143.google.com with SMTP id c12so10338691lfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YBa2LSmYu+IPWGoaF/9O6guywPiZMFZ32Kf+5yLy6GU=;
 b=TgFoBHoLwVPPaGKU6BhV9r1CviGBFvcclk6KZwXVz0HUKDXdISfheqqwBGaG14ujmR
 jXjohpIZ1lqK6WzX42WBvtMoG5LlLcGuv59CkIuk8vozWxnC45/vC82cOvJFpG5WeHmM
 I2Kyw+AnIgoSTo7ShHIAGbcvJbSS6RoovI/X6Ap+agiv3c1SMR5NhaLDLj2puV6MA21t
 Jds0QBLRdNnsDUZM8jQFp+x7oUCtbUgZ9fmn1U7aqnNc7WOV26wwxzZgobMXDyVzDWIT
 GNIvmTMpuyHiqb5fsjQAUcDt1CcigYhZ+p6LsswOM3XHkzFMD3o/zGqja9FaQiARNTYY
 A7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YBa2LSmYu+IPWGoaF/9O6guywPiZMFZ32Kf+5yLy6GU=;
 b=dPEvBKxHax+TGtu28r7sXOdqrf5oTtGUwHPFB4nQ1tJdK5+d4NMCjOdOum9g/n0Oj3
 IlEIzY5RwL6a2CKkDN0j4zDzDQ+au0P6nfdINK3NGOdpdFljpg/dR549IuVAC2143jij
 X5mW4vXLw0hTLxvm2AH2NnhmWI2MeZhd4I43WLp3Qf0nFZ5mnJnPxjfXa4pq6vwS0J01
 8n8CI1Dd05soKE8+f2k4l97HjRtPUoYolGv9zLcjYaUKS8kn2ZDyDVrcN0DTECXCq1Ay
 JsPby9nv4efqKhH28Sth4oAv+6MdONY9hOSY99uuK3rUuPW8vKr+4ADkSqpodFSMaoTb
 eVEw==
X-Gm-Message-State: AOAM532WbJxNnHg3U85cTxm8Fdnmbhogg+/K7TV3EywhDngEylUMyHSe
 SX9BCwzEvJm0Jif/7vYpVMWKJJfC6VcmO2s1WqNYeaaF2w8=
X-Google-Smtp-Source: ABdhPJz+FkcbPi11VJu3LgfkrTe0cXWtOkBWtTFSrQTStJdpts2GmEXjlF/K+BUQThYfOfPoiwz6DTUyyg0qROlwY+M=
X-Received: by 2002:a19:be87:: with SMTP id
 o129mr10647413lff.217.1590406733156; 
 Mon, 25 May 2020 04:38:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200522234832.954484-1-robh@kernel.org>
 <20200522234832.954484-8-robh@kernel.org>
In-Reply-To: <20200522234832.954484-8-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:38:42 +0200
Message-ID: <CACRpkdbQv7AOBDtGxzMuT_Y3XFysZLyL5hQVzAxiXgFKbVQnVw@mail.gmail.com>
Subject: Re: [PATCH 07/15] PCI: v3: Use pci_host_probe() to register host
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_043855_187133_FB329440 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci <linux-pci@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 1:48 AM Rob Herring <robh@kernel.org> wrote:

> The v3 host driver does the same host registration and bus scanning
> calls as pci_host_probe, so let's use it instead.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Sweet!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
