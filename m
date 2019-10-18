Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9909EDCE78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEW6j/Cq6Ss/Z5c892Sy4UKmSslP3lRpSo8xfkkD7ic=; b=JIAALNpQm46Uyp
	AysRk77+MBjTlfiVGY8ZbLMFpnYc2Vkqj3ojXkev4BbG7rIOhphO4W3tPZ6pTW6VXv2xmdgykpeD/
	ubXX5PB/j6lnyC0Svn2cjdsoh8+eoNjqs6DZy6ciTJMUqZd2XHYyjBxE7KbDuVj2Xp1P0eDOto/tx
	McMTcPEsUVoID8O/xx+phaF/K8cbPw4aFfEweRgFoTlnjBIlkj7ZyEaaoCCjB6wqNgr/80Wamcrgl
	iX2d1cX8d+4L92F+4l1C3qwkXlI3bZc5b7jbUG9s9xQke+Uh3JU5OqQ+oTg0S38Y6jI0roNO5too9
	eQdz4WLM9gLQSqe4B6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXBk-0004iq-2B; Fri, 18 Oct 2019 18:41:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXBa-0004iL-JU
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:41:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id q21so4386091pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UinSvkDLfTC+XiP2vKIBGyDn79x/XTvuzm7B+8AYlL8=;
 b=UMH8hxRFJOOJeXzCIZPf/rIFEn6ODOgbq4Lr2sInLLFA23TvGvks6PCg8iFRBBYHjS
 YBzH7x+7vY4NYCJDxaFSgfViupLFZN66oEC3pnGB1a8hFDK59fEBkLeS1usXlgtk5c8m
 VaUNCgsWN2QJGxmzpd+oGw8qkSt8E9pNnWiQBzITyeiAFhe9kaZCEGoXNTWROYTItRB6
 jmSKEQOc2Zb7raMcd0L8VtmJtGowntLNLqniq3GzzS+Eeq9UzZ74V+nydGwfSnS0HoX5
 rtqdjVMQtZnXQ8G785RkuUtZ5fsuwYfIJooUd4glqLIcFxDEzPjEJbhgLi4geAjNxmXO
 44qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UinSvkDLfTC+XiP2vKIBGyDn79x/XTvuzm7B+8AYlL8=;
 b=eh1/fzBy523hlv0R234wcaE4TMHcOxY6BSznUdOecPGuC31cmVH+7AaFWHGuV6HQ+a
 3LMj129byz+gPzEKddNZHLv/TEtcjXIABtRP1rAaLsIbXSKHgvURnvxKfuzMax38VjKn
 GcpnsM8ywvh8xBSEZkx6KGqeuCEdsmGIf2f3KitjXMUJbFhC5tVBL2Dhwt9CDYG1KrKF
 luTATaNSkfjBq4D4doLB6QRoLlZjZF/r5sp1xDxWRNJqp1IhbeuY0L4BCsn8h16g0jVG
 qkvM9FV7ahia8KCbulb3qAh+MeynYVjfCQ6e5E5KcWGMIwJKNBeMJ4PwdPqBdEIG2DVo
 SEsg==
X-Gm-Message-State: APjAAAV5nm+A3b8vS1brdsssfO0A/C3ON01f6bxCf8V7Q3Ga7bJx49Zq
 /IK6WWB2qlfOB8b/O0pdiL4=
X-Google-Smtp-Source: APXvYqwKxmO277zrDN1ND2ApV7+ouGwspVhzN4O1aLlYUXNWPVKfzZL3GB1RBcqrzsjNvms1xruaEA==
X-Received: by 2002:a17:90a:bd8e:: with SMTP id
 z14mr12420751pjr.40.1571424073790; 
 Fri, 18 Oct 2019 11:41:13 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id w189sm7451929pfw.101.2019.10.18.11.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 11:41:12 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:41:09 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 28/46] input: touchscreen: mainstone: sync with zylonite
 driver
Message-ID: <20191018184109.GO35946@dtor-ws>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-28-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-28-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_114114_662240_99863C5B 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 linux-input@vger.kernel.org, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 05:41:43PM +0200, Arnd Bergmann wrote:
> The two drivers are almost identical and can work on a variety
> of hardware in principle. The mainstone driver supports additional
> hardware, and the zylonite driver has a few cleanup patches.
> 
> Sync the two by adding the zylonite changes into the mainstone
> one, and checking for the zylonite board to order to keep the
> default behavior (interrupt enabled) there.
> 
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
