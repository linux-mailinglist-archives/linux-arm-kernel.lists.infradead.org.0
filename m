Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49C5889FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 10:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mifIVp8K2ItVO38VQUvTHPlzw1xOzoOkCWSmHjYmgTI=; b=iTDQg3BnucJwbv
	UUmpHCA+rOeVzbhwvqpAF29aBfzrZTRTAD6OWN6C0klrS7xmGZO/7zeWGpdzFvVugulf3SL+SCirV
	70elS9iVMMeVtiHDrxxSgpS8/XOn6Vs0vbgq0xQE87Bh3LokxlIeCejQafOrwSHMsxl0a6DuFXJsF
	FoUQ5XO/mfIM/tVd99FS824563Oy8fq4OouU3FUxGrNbu/LLBfFqSZLg0a4jkWq5teCKmJSvjPROK
	2NQc/2k1rVyxLuPXEO0cyqc4BJUrogc1H3ifU1PzMNtu1XolB6v3imRTlRoFgpahrT/uXlHcVIUIL
	PeoAd0cCh6ACC7ewYgsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwMe6-0003zK-SH; Sat, 10 Aug 2019 08:22:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwMdv-0003yi-AE
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 08:22:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so71273432lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 01:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pc3qLlQ0oDS/ErmPhgCH+EKKU+gZ3YZH+6szWLiU8H8=;
 b=h/J/JDe+O8fLtWaF7QsQUS65lORhTc/HLOUgNSJBchaDmHC9FOX1tjM2vsU8KE92J0
 L3TZUbszXjPM6ieOgu2zBATyb/EIQNzRL1jAKTNcty6Brrx0Q9bXvVYaT2aP8aqJFkNb
 2Zy7ew6SyiIWqGKmXWd2au7j7gkbzo4Pg+zYOWk+xg+GqxZ8Z0NgFyDFjQOFyiSiDSNd
 Qq4XNSuK+9+3MtrldCbidcUguL/3P2XgI6rClzRD9bjUgmyBUnqmokuPw1Fb87PDJgA1
 B+k8trmUgKNLPHxSeJp82o6LFUdQUR0dzM87r+f4K1bkLMizQkHnQZYIl1T0zkEQzH2Q
 xkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pc3qLlQ0oDS/ErmPhgCH+EKKU+gZ3YZH+6szWLiU8H8=;
 b=MgJhzmtEA2TE5nqWiEomrI++zyIstNI/DP4EZbEsSFmAjt9mzV3BUGJPk/qB+alIn0
 AUIazXFxfzprpE3wFsCmYIMPTgpi8xfrp5NcRB+EFhYOoSaIIxvP/PGdrNiDSLXkEFTR
 up0cDURBC27vk3OG76XKJfH7SsfWHeJUkbbu6jVOpI8TAPl5DdZ8uTblugZTKNDoIM2s
 Gwo6kQdOydsVIrZ3eghYwfSnj6Gu0/6c10m1+fHsc2x6MpE5XYQs0rt4Co2BVlKT2qkp
 7TeCzxWMI1HFOtfqtpxCvadYlWCjNwQUON3mq4GMKyEzc6e+gkSXG0hu3kq4+/XAjssu
 puGQ==
X-Gm-Message-State: APjAAAUHtc+i2tWO0+EcDx6KVmD2vJaWOyUCtxig6KJoSM5EIW4nKKaJ
 yWOEKb3l//Bcodla9x82/Wcf9boem5RZ+NZzneZZTw==
X-Google-Smtp-Source: APXvYqyvHrlvtVs7ifq6cN1Jxp6sfhCgtxKfNrZ3NRhbWC/hAwmuwvvUHk3Q0lUpq+cm+bv8rqjcj7WSrqYgaz6dQCM=
X-Received: by 2002:a19:e006:: with SMTP id x6mr14672568lfg.165.1565425345868; 
 Sat, 10 Aug 2019 01:22:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190808075457.16109-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190808075457.16109-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 10 Aug 2019 10:22:14 +0200
Message-ID: <CACRpkdZgpSzwgjM_p99+j+0_+J6ydK-L6_ouphggF1iGs+Jwmg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: stm32: stm32: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_012227_361953_62A88550 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 9:55 AM Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node and
> for_each_available_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return in
> two places.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
