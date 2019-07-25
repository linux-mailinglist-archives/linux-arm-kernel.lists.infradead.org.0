Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4948F751B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyx2MtKmguXm/yziRoW0fUlKhCXpwpIjrX1kwR5J580=; b=gVdDcfNQ8QesY0
	c6w/by5FE0pN852Mzc+AxgLFnp8LufgfWkP3CpOsiu0PtFQq3CUJU2qg/caVuQxWqF0wAn66KHPoj
	GXqt8MpH4XiOtQA6LMPxNH45qpPSI0Za/a8wKucCafGXeN4Ceri++psrOysWfuqV+2GWlYPPbj6vK
	0ZiEa1Y2bIHHLPg99AE3+WGvxxCRBmfjG08m75JbC+FToin2kUjgOvezMffT0QUwHU7TJB0mKrl4p
	36hxcVr0tPNgbHJUCvxzsrbqIrvyxU2fJkuTfQzyad3meSRokYmB7Wyie+Tuxr4T/o6v+ldTNW5BL
	1oTADqsRS4XMI2xcomsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf1m-0006wB-1w; Thu, 25 Jul 2019 14:47:30 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqf1V-0006vA-1e
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:47:14 +0000
Received: by mail-qk1-f194.google.com with SMTP id m14so10929339qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:47:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=htUzWSoApcDWjKb86ULmORYibBZGH80wc1z3U/svmrE=;
 b=j6Nc9OtcK2pulYiXSrA7tU+vGhQwXC4FQN025RxihXDN92FuJH86eixtpZ5Z+EP/on
 6AQ8nMeBDCG+xPOUO/ozFSSS6RViVgXyS0Drh6DsrKUVGRqGQlrSydDIU7uIk5489wzO
 EjciEIqKaybrR5QG5cT6W9rb6YDRPe6ppQMEGaSbh/CT84Hf8tEa0e7gx67lZIAY2Fqr
 6wae6aHiVsfapQpGJVoSAsFCXW+8L2IssR8ZgPytKlg5TFeMRQfI5lE2QoBPenz5Qc8n
 NE9nnvzChP+L1UPrDN5e+UkytmMQhrNCzfkkNOayhlfOsoR/efnbrqWQZxvMSPH6aYMe
 iOig==
X-Gm-Message-State: APjAAAV8IIKw+fazFwU6rz/srwnD2pkRkuIiOKiDZdV3cJZQf3LaGk02
 At7flQjj1r592PSaun4I01jCifEbT3aUaSwk8NM=
X-Google-Smtp-Source: APXvYqxjqgU3XSHj9o7/gIxoxxjJgucmzHbHBCdlZ8RrCm22EYDi4TW9jOVphvXt+/83HYCLnvd23J88dL1/ymL4qzk=
X-Received: by 2002:a37:76c5:: with SMTP id
 r188mr58295205qkc.394.1564066031872; 
 Thu, 25 Jul 2019 07:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <20190725131257.6142-3-brgl@bgdev.pl>
In-Reply-To: <20190725131257.6142-3-brgl@bgdev.pl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 25 Jul 2019 16:46:55 +0200
Message-ID: <CAK8P3a3Oqfs-T=5VcwJ9Z+gtaCOgj99tJ9iZTL+Nr2CrkQsefw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] media: davinci-vpbe: remove obsolete includes
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074713_087042_B524B75C 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 3:13 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> The driver builds fine without these.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This patch got merged into the linux-media tree earlier this week.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
