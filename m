Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433611A1C6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 09:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsW2DdU7EJVo6KnFkVqkUnLH1K1xxVS/+82O/lcBNl4=; b=QTA+Xet/tTOskh
	SENpm4FS7Gwf5ndsVmoTT59FPS13PULqdRQYKZGevRgCfDfg+25nuCa1DYZ0TtjCypekczwGJ1JG/
	+SYhfzEv7xRmHgJOtJsrVcx0JxUY513Nsgw3lHLEohMntNxgurrWJc1ijnOnNGJxDXxrNkrSLukUr
	Ujd8G+y8IkOFBtHaYIe3x9EJvBsLrNEV0oLA/fYujtsZM4+qhl3b7xLC0u+bDy30NphVnPtf6Jb+Y
	p7YGTxnm9m9D4jF83qcHSHKXL5AbGcrYFdIn9kOo4S2hY9Pk4hcPndFtFNxxuh/Yd+WzWi0/2zU6c
	KB2P9YiJuMYLBi1VYylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM4uY-0003aY-PZ; Wed, 08 Apr 2020 07:14:10 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM4uS-0003aE-BR
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 07:14:05 +0000
Received: by mail-io1-xd43.google.com with SMTP id y17so6051856iow.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 00:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n3pOLajiHp9QNgBFOxW5iWABG0gRZUq3fep3oI+pRP8=;
 b=NYpEyhHH8YEEcu1QsXmXLw3y8kOTad+w3HVZnR+Y3hyVn62prunYKNT8T4GqQbQpBj
 l/At2kUjKL8Th079SXupYhtk21aNK7hDaCSwh9agFmmKlcK1CdHlWB2UW04XWDI3jA3m
 TuoQuBtCLW/G+i1HIPoZo0LfWs2GyJlsNd2SQuwD8vFG2NISI8HYiruCgp71XTTZj9A3
 rNRMGli6GXwytqzWW+cq3bspNSs7051L9l1d7ACWQYfr6eoBzNYQ//d4wEEumxvFSkdo
 gxYOGCqvk9aExhalhwO/oAaZIiEdBj0eswBvUf8O0FZrHL5YUJV6MatginpalN+p7TE4
 h36A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n3pOLajiHp9QNgBFOxW5iWABG0gRZUq3fep3oI+pRP8=;
 b=KmFROd6+D83Ak3nF3JK9hHUJqiZ983gxwlcjsCsqt7h0BPVGEqSktIYw+O608LdtKh
 iFmkvLgs9zuS03qlKU+feGYFRgtwHJSJSANF5+WBCuvhbp60JXe7S6Ocyk9SO1iRTuxi
 vovp3p9pwYNEZwhMqVO51JflYXQwryFdlEtz+2J2reAuPcmtVoMvMqOrhJs9dpDYB/t3
 sOcOfHQsb4PWfuIUgVjnlhrxoPxnfv4C2LWufITIm2zw7weI46nymv7JQANGAv2D/VFe
 qtWWuykDVhGgmj0gESn5nkwajpw9g0tuCnundMUd4HewjyRTaxHfh4zFMj4kG2ShojbY
 Ug3g==
X-Gm-Message-State: AGi0PuaqljcK4CrZ14W4dN4d4khFuqxKwHV22WjtbYBvin/XFmbLjt53
 QfK1MImvdauImG7HhUbHu0hEN9nsGKRyzdTsk4k=
X-Google-Smtp-Source: APiQypLby6SoQX8sZccd/LcU0stSsoPaVtQSyNW6q8SgeNId9cCkGs4yVDFZWwGwe5zLBkGQZQA/9vedTzGxJz3dR7I=
X-Received: by 2002:a5d:948e:: with SMTP id v14mr5715979ioj.112.1586330043053; 
 Wed, 08 Apr 2020 00:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <1586278391-9061-1-git-send-email-raviteja.narayanam@xilinx.com>
In-Reply-To: <1586278391-9061-1-git-send-email-raviteja.narayanam@xilinx.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Wed, 8 Apr 2020 12:43:51 +0530
Message-ID: <CAKfKVtENc6R2c_h1Vr9AUywXJNGahctAaBz_05_kTY8vNNXeWg@mail.gmail.com>
Subject: Re: [PATCH] serial: uartps: Wait for tx_empty in console setup
To: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_001404_414158_A86EC55E 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shubhrajyoti.datta[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, git@xilinx.com,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ,
On Tue, Apr 7, 2020 at 10:25 PM Raviteja Narayanam
<raviteja.narayanam@xilinx.com> wrote:
>
> On some platforms, the log is corrupted while console is being
> registered. It is observed that when set_termios is called, there
> are still some bytes in the FIFO to be transmitted.
>
> So, wait for tx_empty inside cdns_uart_console_setup before
> calling set_termios.
>
Reviewed-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
