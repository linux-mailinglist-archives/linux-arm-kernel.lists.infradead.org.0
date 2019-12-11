Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC4F11BFC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 23:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wP2E4OzFo+F059L3aCon9E9JwgHDB8ZeUoRnrFs0+A=; b=uKd0p4KJKILafs
	7/iXyi5VVXOtpp1mVkZUfz3OAiyocConL77RC2Ms8nAvbJm0F7taZLwDcvMNgejGUor5Pjfrf9bo5
	Z4xNi6zs00Qw5kKmoC+aDnn+Ir6MzscGEXclIrZGipaSNHT5UE6Nwt1+TFkXrnVD8VQpV3C9fxuS2
	NE7RpdKBZDw8BaWgflWdS1zu5KWavkTgNn/oRSH3gWKg26fWYqVrnmtmwAaYIWH9exs/nwAUboyGx
	aPYiBOP0zhrqniLVYumVfrv0JfP8A5/xUi+YGxRPAca2zUJjM8rgMyrJdKm5A47ynycO3N8T+6bF5
	HdyvusDLM+hx/OingdKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifATK-0000Ds-He; Wed, 11 Dec 2019 22:28:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifATD-0000DI-4c
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 22:28:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id s64so49006pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TUyXHjX3PYUM9nKm/LBHXohlHydzz+X5MYoM1R3UKnk=;
 b=DlIrY07nZUpFfOZumiYwfvGQsjWziSLuLYYk0u7cfTR9mrbgjKyuMd5nIFIc64yhuW
 GcRRxJf3NkABfPegZhceytl5qOyYrvDrDV/aBhiBTXeS6v6u5sPY5TSPRvjkx4q2Oi/i
 eRaSMr5jcGPDX0kq73qvnAtMLsMwSEKlDbSv3QNbkWh1AR8bEHgwnOfa/wJWqxHMKgxL
 VjL6DCJjVRR0f4QNVAPMTJm1iKH2z8oJiCjGd3nRZZqQ5jMtHsW4qIrqkRn4TgU/fmGT
 FBZOqHzbhmqPfZxERKkpoIek+rADA3KSeICpHN+4g4y4asHuvsgyuTPi6ZyGijl9aQZK
 a6yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TUyXHjX3PYUM9nKm/LBHXohlHydzz+X5MYoM1R3UKnk=;
 b=YQtyZB27h3c4kThByfJrIrmXuY7k1hULvscOp1dsb4G9HuWCE4QxxAYp5XyT/xaxmJ
 jkiM1O67nuw+rIrvXohkTeqtydUCa75KvGEGXA6eAvhRmLQyKVzmlEFUfSah83pqhoGP
 Auyi+kBIu3e9igz9hSC22Hs4n6DQZ+tq0V9t/R+FHePO0mKw+j5Hn3DzGqYmkeZn4RVz
 XH0FyDOI+5GF4L20OalHAKtX/TNQ+EmfootsShoNYot85JTXKboiM8KFDlVY7yFZWulK
 wuRyschdC+FfpE8nj76jcd2KZt5VlNreUFjLAUCXKYvzUjVb5YjqGW6za86zc6VwHBf6
 43Xw==
X-Gm-Message-State: APjAAAVS8wyJ7pZa/6MDc9HdgKjjSp7TSIM+NYvBwvihyNJlQ5Lf+Lpx
 VlpOkncbLUHPAWTQnhYn9GA=
X-Google-Smtp-Source: APXvYqxwKjD3h+li5pd06Ogk9jgvc7NsUBZEri5ZUl/uWZW2mQ2IR6/uARTmg9E9Edg/X5XISeramg==
X-Received: by 2002:a63:d00f:: with SMTP id z15mr6780305pgf.143.1576103312802; 
 Wed, 11 Dec 2019 14:28:32 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id z23sm3844841pgj.43.2019.12.11.14.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 14:28:32 -0800 (PST)
Date: Wed, 11 Dec 2019 14:28:29 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191211222829.GV50317@dtor-ws>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_142835_181177_D9C5D90D 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
> But I need to ask: what is the rationale for the devm_add_action API?

For one-off and maybe complex unwind actions in drivers that wish to use
devm API (as mixing devm and manual release is verboten). Also is often
used when some core subsystem does not provide enough devm APIs.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
