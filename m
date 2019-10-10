Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3981D3478
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hUJALRyber6caIkalZDS6UzAQ/UjK9574hos6ungX0=; b=oPHjkhkbVL/O0Y
	md1HdnaZwINmRKj4VF7qIgNsvJh3WgM0Dc7+Y423lu35xseFX8e22oVsuJWS45EY8cSvUuC7p1KBx
	5xILr4uq7Qyk2vuqn2pzAnhxGskzX8jOChJftOdQVHhkD7nyo3ZckdMJ74pydWVfSU6OstIotvChq
	q/puH5kk8oOyXclChxm4VPeeNXcMAFzANTfO6u+p7mXrFY+tYod6V2i3maiEH4wCcnbe18uPNxV71
	OwwDRhP5IVaGNnFeE++P7OyaHUVzU71GaRYD8Huj5+CJFvaCNoXv+HNep7iXmGUj+7XVsVpUNw0tP
	1Z+5B8GKyEhukajrwXuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIi4G-00071h-Po; Thu, 10 Oct 2019 23:42:00 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIi45-00071G-6g
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:41:50 +0000
Received: by mail-qk1-x744.google.com with SMTP id u22so7229976qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 16:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qJAWywHBsS6HezKNK9ZjvcaTD5FSbDwrNVdcNRgDm5o=;
 b=KE2L3z+yLugM41vE7B7L/+3dd9xTaYJgrmfANqDmI8fbCFLsh0UujCnqd9/8GWOH8B
 UfhgN3vbEZ/X88jSoXyYh5P+uZ43u7Nm3c5BhOIAsmbyXB7guZN7BVxGP4lhE+Tuq9pR
 TMhy5BL1/1QjqdjMRFYvuws7J7g7sEDgr0q4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qJAWywHBsS6HezKNK9ZjvcaTD5FSbDwrNVdcNRgDm5o=;
 b=X3VokuGEDJ0ixxCyBgWdcn/kDETHtn7MInVP2ipdOZLmuWyGT5iLyXCnlSwcYofWtp
 jtjoxMIy2oimTA9xomHhO5wZSEYkOkoWBjoIKQYYjSjAPCeCOiDp08xwRIrjU+zbugNz
 Aueb09hDuKcwjhLJ/DoSzhotku3F9z5VF2EzjQJ+3n+u9O69sbxVPJLg89XAS0RLycBG
 cfGcDl2CJHuMbiQBssPmwHPz+NMtfv8sajg7xSgxnIgbmsDZG0vt6ZEIq5eEZYCPKBd9
 zMKF0Kul0tZTsTb5Ce1nGGQGsDWcRHbCvFPe9mKTATOm5lpKFuRcd0mbkmMZjxpOM0aH
 F2KA==
X-Gm-Message-State: APjAAAWg7D6sQn5DHK3geZljXX5lYhl+bmwzVHRjQ7wveMJX0/hxeCuU
 /BmVtYD2rbz57qo3cq04pbbfyREzqxNXnb19+NeYsRlT8h4=
X-Google-Smtp-Source: APXvYqzF4Bybt3eQo1Tnv/6kiOrhu88uAqhznHPcGo14GIAGi4u2VEbpqF+T4r85m7xuYjknEB0C6RBGaWMOJSajbhc=
X-Received: by 2002:a37:4dca:: with SMTP id
 a193mr12683477qkb.292.1570750908045; 
 Thu, 10 Oct 2019 16:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-3-andrew@aj.id.au>
In-Reply-To: <20191010020655.3776-3-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 10 Oct 2019 23:41:35 +0000
Message-ID: <CACPK8Xcrc_2itUcGw6caa8Fp3sJE8oHBO5LJgBtqScwmVAuHJw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500
 MACs
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_164149_246646_7EC09A9F 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> RCLK is a fixed 50MHz clock derived from HPLL that is described by a
> single gate for each MAC.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
