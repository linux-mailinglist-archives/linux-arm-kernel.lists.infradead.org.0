Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EA84BC89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBZ7Xef+6fnXxWizsl3qWe80waEldGWD8dSOYELlHqE=; b=oWZoYl9cTW3qp+
	XqpphRS6YLuxzLIFPiNrfqpkFnzFaBw1mylF1Lnj6GJ0hPIT5D5UirQ6g3SDlzQhRyLGU9zxlIvj2
	71GUdkm9CsFEd/DDC+5hLmOD7vSq13kso2d5VuyBpxuCyH8hQDUuRSYEtlbwDc4uhLlt0NYhi7aFj
	mut74YUg4nT946NNxYYkV6n5NSxU2/KcqSA7NW690/D8gMxmHAKDDkBOK5sEflelP/VfVxTtUE4t2
	lRwiBCPPz44yGi2Sef/jVoGTjon65LFpzDNSe/P7CWMoY7imBJyJhczrYm4YDuAxnfjPiXJ0pWbDI
	ZGazQ6rTpqDXpK9YAFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcDQ-0004jx-92; Wed, 19 Jun 2019 15:09:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcAD-0002QX-F6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so3572400ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Bx5BQWbx/bpdzU5SEuxKkQ+ScxkdKO+3jLa8dwWvM3M=;
 b=SUmuCsYI3Df2tk88DVDc18eEJMMuEowDVlJASjdBp9L8GwbG6F44H/BcsmFvWtmM/+
 DpOw4e1vJ44GbCkF6dHs6wD9Bw7UtYeBQiA4khOKoSN6lwSL4lN4iepALg3Yl32dNi6v
 aJ2jyKhh5M/4iDm9L9GdEtaFb96pWT5YBPcRC/20FTVLiKS1GqJ60Qn0/ox5zyiENffz
 SqWoHY51F6nreHyrmkotdER6nMx7EH2TdeC7ycuWKyCw+ujpsPy8hEpnAmHqyvM5F9Y7
 RsNcao1xM4cQQpzmVJFgDIdrrx21c83/pSTMcxS2V8xcqSnIkjB2P3dv7acyPZjvB5RI
 uRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Bx5BQWbx/bpdzU5SEuxKkQ+ScxkdKO+3jLa8dwWvM3M=;
 b=pspdorj7LlgBJs8DbDjJqnNMtzaPgSEPCzIPpp5o2A07rXNTn15HdMs3jUpMD80Akg
 cMdpa99KbDIzI7xKxSvldlnGlinpIVZn7PChdmqZHkhb+xfLxWFkoS8Lkl3+yUO/NlgB
 lpcK4506jCFRSKX3cIfk3TgIRjJAHQJQLr5mw2sVPHbUKJ9Gkn8w03tkX95Xp0I3NNU1
 SwTVkQJAfwVcA4VUoGfkDKIIr8p/593fuR2orTZKbRCYEGkqpmD7SY5tEbIrjf8OaF3M
 2cznhsmvsECHYenWJNx/71rIU9mHlJdlCrHqXQo3EpP5Do3YDlyqlqE3whYh0QvMQ6HX
 IkSA==
X-Gm-Message-State: APjAAAUrZL7GvphlSvqz7qLo2cBzHVZo8t+tt5wCHN5/16oPvFimrJVU
 5iGklG13FG3YZMMvlN379TCnHQ==
X-Google-Smtp-Source: APXvYqz7lEJqatEKVhpxLxBVzzbAZtobDIPBrxPQeOaeOz3Ms3j+e8Kle39rp/aOWbg1wWbK7KZc/A==
X-Received: by 2002:a2e:658e:: with SMTP id e14mr36149687ljf.147.1560956776142; 
 Wed, 19 Jun 2019 08:06:16 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p29sm3132568ljp.87.2019.06.19.08.06.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:15 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:22:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH 3/3] arm64 defconfig: enable Mellanox cards
Message-ID: <20190619142222.lvj2dd7oxzfc3m6b@localhost>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
 <20190617160411.24329-3-marcin.juszkiewicz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617160411.24329-3-marcin.juszkiewicz@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080617_531533_5598AE4D 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:04:11PM +0200, Marcin Juszkiewicz wrote:
> Mellanox cards are present in several AArch64 servers.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
