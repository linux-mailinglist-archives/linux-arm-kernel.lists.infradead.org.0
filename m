Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27831A747B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2gNnaDaqS3UdU3SKOd5EYex3C97HuZXJdjYwtjRSpA=; b=LJUEJtM80i00EA
	wv2NHmwD6/zrvpc24VAAFhWUsCLw51mNtFXiwXqHXMf6Mk2JXeK4PjD9RiRSlBMlLZgESJuYpupfy
	BrGPiqTXiblzutwYl3kz1wOUDm8UDBgujWCZtpps3GPbfffE9jUyl906DCWpe4gXkkS2a6BWKn+XK
	PPjTLjDm8XiUqqNPS+vUGExKdXW47y7TkEbrDQ4fldUFCjM+x4wh/+Dko65Z7Br2IXCZVTHJAS+p1
	6WyhouZSUBSU4IqSPLTJLWSE/dpd6LgPiMYVkCFRQfHFs8bT2SDnPSH4N6S34E1TXT52ug6R3uofI
	beFWarM+ruTIOdXIVgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FEA-0002Ee-RA; Tue, 03 Sep 2019 20:16:34 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FDy-0002Ds-T8
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 20:16:24 +0000
Received: by mail-qk1-f181.google.com with SMTP id m2so17311942qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 13:16:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I9L2785C2btxqBJKiEhwb2rjpjRWvRDLJ8LvKhBnR7M=;
 b=CUgiXJZ/99BamKLo4PX1K4JPlT0ZiNb1rNaTmBwTx4hLP5249pDoJMdY7NekdTm8Nm
 SEQGlrMJniYJIK3VlIJvbKEYw5gdufJv6d64okI5y2ghaT2dmlsiHQPF+w0gQBotCW3E
 ti2HXPMxjujIF5ukQFWTuzi6iJomwkErEn9etmwNXJStqDISzgNm8vfDcDvXhv78KFUx
 bOBpBR9ztKygbXDm5AcC94CWLMXumHSmeA0nLLOFebo6CjXnLUv6dg0zwFdRkbdcWrAN
 Ai98t6PUNu10N8o8OBYwxjJb57d2vRb6Wpjgh+swzR61lnveTXSBQl0JtZiN0GDS2HPj
 Vq4Q==
X-Gm-Message-State: APjAAAU960pDFU8XsYa+hzjqYeCKJ6ojtJpmcVRcjtGVNLo3oaEkioBs
 s8bLgKR78kG6dKkKE2++4mVRg+xSmtHHNUodNMk=
X-Google-Smtp-Source: APXvYqyCsexWiK7L/aZ31I67kNz7n9fqy5VUIY3KlNYVdon2D0ObdblZSsyJQJcmItPQAQ4GUxvNqwAQOaslFisGvIA=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr36419743qki.352.1567541781734; 
 Tue, 03 Sep 2019 13:16:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190823123643.18799-1-geert+renesas@glider.be>
 <20190823123643.18799-5-geert+renesas@glider.be>
In-Reply-To: <20190823123643.18799-5-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 22:16:05 +0200
Message-ID: <CAK8P3a2zDhj_1M0d6t9MFuWCK0kkFVnFtzP7OYE4O47Goy6vdw@mail.gmail.com>
Subject: Re: [PULL 4/5] Renesas driver updates for v5.4 (take two)
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_131622_937094_88325E1B 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 2:36 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> Renesas driver updates for v5.4 (take two)
>
>   - Improve "always-on" PM Domain handling on SH/R-Mobile SoCs,
>   - Automatic errata selection for Cortex-A7/A9,
>   - Small fixes and improvements.
>

Pulled into arm/drivers, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
