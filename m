Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2866831E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jRRN67px4RQkxUKlcgTyo4HQZMLBzUfl429+ouAFPo=; b=D6TaLeunj5ZQQU
	N6Qa1ASgKyfbh9HZ9KrE6lsVg0eOgdUrFBkGNyr62R82OFwkyszwkmSQHBtT/KJjeZPuoSCDBKmQX
	oS+LSwpY6o3z/T++TUrm07xsqzv2b5J3v8QybQSZTyJByfQJ7/KbE4oHjhdRKCn1qyT0W/r2eclhv
	64xEZMFJh58JjWOUqs2HzwamJdcJK+WHU9wVREDtUGaRboQQSr6qnjn5eIg/zMPtku3uHZgmRuZNz
	NCExAXQXFchiaEioe3wuEbdQZQ2XMFUiuEgGQuJJlmFMCAbz/lHdem62DQf56nmRSALZM/ZPEnZ/l
	MAhItf2xHN96m9gt2CpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huywo-0002iT-Db; Tue, 06 Aug 2019 12:52:14 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huywN-0002Ve-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:51:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id h28so60965992lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MDc/iQ2eIDlTo16ZWykx7RVMjuZ37u5TnDlQkdiMrVE=;
 b=hz/VeKXGCwcPeqC9aqniT/RJo9UsBFi4+GG6MKkr1WVqOMa8ERN48EY+V0w4Ej7juJ
 aD4yF3mMtWShOw45FzaZwEZQ/GISnkbz3c1VOYxcrYhvmWv0OEN1cx9DmvJskcPZxOWv
 v9SZcPLSwIjn4rPCTbgo24zJcBqw9CKa7rK5+TNtrJ3ne+c34h9T3Y6YRcCLlA7EwJAm
 5A4d9O5pEhAa1bJ9689hIIGgMiqGW/CAr+K3hCqkuyf+CWESl2CQoUx7Dc6n+6UdLGwp
 8mUHILWIlT5Qn+34InIequttghioMTJEx5Pxqjo5kvcvSJKWUGF4XfRWosv8lOSeuoi8
 QOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MDc/iQ2eIDlTo16ZWykx7RVMjuZ37u5TnDlQkdiMrVE=;
 b=PMN6XiDJodzMBT/tkLePU0EPnLAHfOW1FXaHyeQBtT38OehquSNxmEKuR9iexBXVi0
 JLf39aaS8lsHTxKjXn/wMj4m3Z4ClLwT/1FnG+yWDLdDsKsUNg6s6J9n4zjejhMNJPst
 2pqNQtdr/iFnDXnUA1f2jHP22+qaFrrhlEBgr7KRmHk0RzMIxSFbrWIVdtt8KkHXazTK
 nTGsaMMVUqEiVrtnfpqPb67muxG7MNfEEZME63VbBS67fqtotFUZEIZ+RYECaMGMUIzy
 XvdzpfFJBSk74+69+6AV7bS7rXUz9fUQ6P4pdLbNZV01L3Q23mzU7pJSvpshq/S1rPtD
 Cvag==
X-Gm-Message-State: APjAAAUz0gY83AlUalorQ/Yrx6V1rKbX2p/kB7rZywYwqUSnfcbvbaLx
 gcs3PmOHZ/d6h483fiI/HHM2zII9OIt328Li3QhqeA==
X-Google-Smtp-Source: APXvYqyoPc5AWlNnRVVNlec0etzZ5zQeCgJGmX7cczsuqE5p7ZaVinvzbmAOwtQ4FwT9UfgxaziNML++orDYb9t99XY=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr2471414lfp.61.1565095905361;
 Tue, 06 Aug 2019 05:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190804155117.4753-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190804155117.4753-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 14:51:33 +0200
Message-ID: <CACRpkdbpZM3kDD=sze5aL-nbmO6YkYk2GnSqi+0tbq9YwSoabg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: nomadik: nomadik: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055147_438764_01151475 
X-CRM114-Status: UNSURE (   8.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 4, 2019 at 5:51 PM Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return.
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
