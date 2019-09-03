Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40701A712B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 18:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kLtbXtKqjpQNWa3rf+ZkZ0VqRvzX+jCxk5mJbBmLo8=; b=TInYxuBlCBc7ms
	P2tFnrVFVl9hLBr0rWdQ1KC9e+Fk/UTrNwSZ3VYX9X+eXCraUchGugwC1GvC0LPaOAETQcpqZlMSq
	a/HzAGINFpiILz0frGbZiJCtmnYFGH0kBqmOjxR90FqReNJdudiwkvS16Cnj5LWT53SIHqsnMhn1R
	0riIVTBqM31Pqjq72yppIUxcuHa5LMOGB8gqCO24FfUEEjzTB5S9QEsB6Evc6evIL1F9pj6TcI+Hn
	DIG75/6CNYQSB0ZnGySIA875wd+Ye4Jx0RQTJ5lsIqJzdW/5h4hCRGLuyFDlLh5xSo0smZWWxxyC6
	iV/Ch1dtDsU7kXdjkiIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C7I-0004kc-Gd; Tue, 03 Sep 2019 16:57:16 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C76-0004k7-B2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 16:57:05 +0000
Received: by mail-qk1-f195.google.com with SMTP id x134so6497084qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 09:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gb8etr49MwUKfon2fI+PV2za6pDHg0acduuxTWmNv0I=;
 b=s2Jets8tste9EAKVMddI2jSjRUAAfiyo4qF0XNKlAJxsegw12o5bzEzRIvBEdY850t
 AtXXUlTy1jT+isfN4THNv6rVqEXU8T/NbVo0bPrcJATHlNtVdaD8JbaB/5JVWlKhhpDr
 boQ5oCrnIZx7IbRmVWPEvm6RsciqcW96gJC7PaPL7fB68BJSQDrDQh/teJxmuiogC9Es
 lzH54FiEyJGox1qgntTM1TrYfXpHJhAt9Db5T744BBFkQzpdm1CU+RaciJRNjqpvsYM2
 SQJgql0Iuf5DWNCLCyjv97wXWPXGwaxmi9RBilkK/rjVEqn9wv187UONkFrzyPq2e7Dw
 vQag==
X-Gm-Message-State: APjAAAWbNU4dSvDdQJHaPj8GTCShVqK65NmnX/PC5fHnwFtNPVXH2r5O
 QZJnPbbn84csO2Rm2ZbEAkTEERhD4aKON9jTmas=
X-Google-Smtp-Source: APXvYqwv+4TKE1ZBTr83BVZi4MqMdW5ec2as2V1u1iEky1q6q9VkMETd/Ag1zbej8m/ODJnVR97W/E2o3NB0XdJBwEc=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr35433731qki.352.1567529823221; 
 Tue, 03 Sep 2019 09:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190819141659.26414-1-dinguyen@kernel.org>
 <20190819141659.26414-2-dinguyen@kernel.org>
In-Reply-To: <20190819141659.26414-2-dinguyen@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 18:56:47 +0200
Message-ID: <CAK8P3a10WrPxf23MfAoQ6zc7WBnVs3bFrB6whu7HfxGqvc_96Q@mail.gmail.com>
Subject: Re: [GIT PULL 2/2] arm64: defconfig: updates for v5.4
To: Dinh Nguyen <dinguyen@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095704_375191_69D73D63 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 4:17 PM Dinh Nguyen <dinguyen@kernel.org> wrote:
> ----------------------------------------------------------------
> arm64 defconfig for v5.4
> - Add CONFIG_DW_WATCHDOG to support the Designware watchdog driver

Pulled into arm/defconfig, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
