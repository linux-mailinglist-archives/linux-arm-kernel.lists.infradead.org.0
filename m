Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD66B4459
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 00:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ohs7tcG/xgSlkVEkdZCHh3zM9Q1o9h9az21iMmlRjqM=; b=ibcslHcLluxaXR
	AKidpQ6eV/CJOHqCZDZPh36j2ilcNbZtfc0sXy7GKV0RVnh22jlGtXkN4D4lkTJZiwKydR+qgZN+f
	3sM4kvHXcozi5GsJuBuMaC0tnZsAfuWWj+QS1N5CeVwLssbJytAmwQsrHmTOe/UEVq84sfjxle73l
	V63c1FsWRbbUyS/+im9JVrDY/GEa5yqTBksVFfz98KKCbVToxllshPbWDmeDw2Ed0dlFn9cn8N1NM
	4dVTgOcvSyiSpjJs65YqxXNU8anfiucsmAjpzTqi16YKTb/mq34a13yXa3eMU2MyTWWVF7vmQZben
	UcMPF1eJag7M8tRdca2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zwd-0005mr-IO; Mon, 16 Sep 2019 22:58:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9zwR-0005mF-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 22:57:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id c195so1255709lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 15:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=laPzJt3OJIMvrVA37EX/dFU7vRHt+cwZVws62wvSA/w=;
 b=znJp3nwhbqMBu2QAKp9RYV3SDs8zPy5m34NCexeUJEAQoLYKVghX2NFQ2jnPfGIU40
 m0AAW+8gNWSBtJKDa77UnZ8Je04DN1fvW9oL4xItbaQXGhJRvk73Yq9doB5D7vjqxEzF
 ePeBLRHPCA0eIzIWaloUSAiJHybpqSrsp2y6sRMVo2xbHspDrz8ML0SMKAxR1f8Z5KNQ
 7JZV9Tr9X+pvJULaVf7lAPwmoJJ0VTkArH0vxrPdVudyqY6uCayF2nGuZO56OMZEFqOu
 e1aGq9wrtO0/xNZ8RiheEcPzTQC86IICadwUtZww0F0M8S0WQx2dWHSzwFsJWb+KQUG6
 2uTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=laPzJt3OJIMvrVA37EX/dFU7vRHt+cwZVws62wvSA/w=;
 b=eijiJmwK/ADN2UGkvEa9huHfyXAGnD7G8hBUjHk4mHBXpTfGFox5e+/NI4jyuinRt9
 5iW73L/dxDK1BAmEYZxT60pJANNA2amQx7omPP/Q2rCMu1CF1I6d+c1b/+J+CyymXdNY
 JjSTMspuEOlWALoqOLG5CoyzYJwZktfZ71qS5v3uMMI6rbr2tffj1nNWWl4dmdt/2Zoe
 SSpg0FsZsJN4rnyNpQSPFMSaxcCXCD5OvRwP5viRMO13HWPZlUduo7RlCWdnCwjkUHZF
 U1dIhPszVovLkZCb//PdvcotL9u7CHhU0p6hWcfQKFwNwvCjUd7CR6VCKzSTzZENRzX0
 YbyA==
X-Gm-Message-State: APjAAAUEN5ywmV5VCOJOrprTpfBxn9/7XndfzYzafdICWtQqmr1s/GJE
 1etZXi9nZ6tzRJE3Oy7T7/b1D9Cgd/vXTm6LQWOy7Q==
X-Google-Smtp-Source: APXvYqxGugmI/q00XRABn7wo1+xpinSyI8nPcr9dZ0fY7WFEmhoKKmYDwsalRoHPv3m8HXeSHBXbBXgJYckrJpHoqR4=
X-Received: by 2002:ac2:55ab:: with SMTP id y11mr284333lfg.165.1568674673341; 
 Mon, 16 Sep 2019 15:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190916154546.24982-3-manivannan.sadhasivam@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Sep 2019 00:57:41 +0200
Message-ID: <CACRpkdZC9t-1ZtFzn=4tyWjVteRog6M=VDb5Y+g_3qSfVO_epg@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_155755_857166_108F7B67 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-actions@lists.infradead.org,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Thomas C. Liau" <thomas.liau@actions-semi.com>,
 linux-clk <linux-clk@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 5:46 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:

> Add devicetree YAML binding for Actions Semi Owl SoC's SD/MMC/SDIO
> controller.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Neat use of yaml!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
