Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F08AAA7BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uh2+vM+COfmwL6Bfv5fK0boBcrnfBEjlJzzXpuIdcqw=; b=avLXE5lseZkBJI
	DfDdg4ZYP2Hc0XcFhWzTIblSwfX7NivFiO+VPruswtUElO7D1mbQ6qDKnA9XL6N89j30HWbAPcAlH
	+zAXn4Qacys5r6+Mvfim/l2Fl+cJchdnOFUFOuPXVsWJ6oKwMQjdPmpAzm8+/LCAg5dnd8HlFg6Jd
	2tuliQikhP7xW0az+XIpb1woeQrSMzk+O1QQsB/XC/m6YH8gu3FtOVY3+L0JoKQYv0S1GTuKxbZGa
	ThQKXt2VxBjZMahKPFUD+WN1+WP74cQGsnKi+Kwf4PLoXttZiyNoCLyGlc0A+Wl8unDDrTqvJEvWx
	zmE9UyDTsA/vnlmninqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5u5H-0007gV-S0; Thu, 05 Sep 2019 15:54:07 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5u59-0007g8-Vr; Thu, 05 Sep 2019 15:54:01 +0000
Received: by mail-qk1-f193.google.com with SMTP id s14so2604060qkm.4;
 Thu, 05 Sep 2019 08:53:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cwmjf5gb63BqTpHRDO6wRd2JZxlRfCH6QvFbYjf7VDQ=;
 b=oHw6+4/0QOCmitXsPLbmyWWPk+Wr5qTXcU3Zyi8zro2q0bC8jdz5u5160ZGc2fUao9
 YOuowPWinA2xYMYvFiKfKAaYA1HQSlF+K6zdxeiBgAKa3XaqsFJMT2t3rA1+coOa0wq8
 IJJjvEPUmkyOEtutEl4LmWFDPFwulnGETIh/2a1myhEN7m3dgsKbSkf1F/i9TY0ThWu+
 JfjWh3y1AEq1sf4zjZ6PfxQKjqGsbhf6pSydR6amJrj7pvS9i8olcg2R16uloVYYvGnV
 cngQIryVdmXWVeTuogfUm8QeQYVtfiKYnDBr8L9Osj9iD1BQUtyGIKpf4tBkTAJPqt45
 3WVA==
X-Gm-Message-State: APjAAAXFuXOqEXovp+aZi0CcEwiy8bODia2L205hIhinat6myjflpY+l
 5no8KC1USJ7P2NqQ0FIYufNjamCHsA+50Qbzh5u7J5AV
X-Google-Smtp-Source: APXvYqzGdnC8Gr9nMt4LFO33Zvu0VJq0io3bNUXh3Sk5jWwSQBrBIVfSSVkOzBGRDpnSQ4aR9CNOuZ5EHx5/1URezvQ=
X-Received: by 2002:a37:4051:: with SMTP id n78mr3551173qka.138.1567698837330; 
 Thu, 05 Sep 2019 08:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <1718334.9BoTfW0Ujv@phil>
In-Reply-To: <1718334.9BoTfW0Ujv@phil>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 17:53:41 +0200
Message-ID: <CAK8P3a22kJ=psDxxcf2xnmW9k99mb8s7OaoEsZeXwizt2WTM+A@mail.gmail.com>
Subject: Re: [GIT PULL 1/2] Rockchip DT32 changes for 5.4 - round2
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_085400_026810_851AD855 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 2:18 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi (arm-)soc people,
>
> please find below and in the reply a small second round of Rockchip changes
> targetted at 5.4.
>
> Mainly only small cleanups and have been in linux-next for a while now,
> I just didn't get to pull-requests due to travel and jetlag.
> Linus wrote that he wants to do an -rc8 but if the stuff below is too late
> I can also easily move it to 5.5.

This looks simple enough, so pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
