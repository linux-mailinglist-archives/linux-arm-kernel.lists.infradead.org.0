Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D137175609
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfRx4LUwbGHj+hnL5GzdZIQHhjD2lXK+PHYvUyO15R0=; b=HfsV3gesU/hVhb
	wBhLbxLSArVeI3X4cw6w4b+S47AIcUwQUqLCVWtinFxyUt1+wJ+Uai0z+vmG3R2NLl0nElT+X54t1
	Xz8Ll1YdovH2Jgnol9Qgrw9b27aktFx16hTQCbcm6aY4iusplyON8JeK4vcjZKy0KOHAHhSa0tT6k
	Na5jzgiy+l/eB6hP3rQEMkNvCdctqSr8969L3LFbasKKwlhTbGcIFM6ckQThO8NrIGR1DBndt3sEm
	YjtOhA1iaFcPLaEj3TaXLnSilDyUtlz0eb4JK+yCikKdxCI0rUKMm35PtYjf51PxmSU+ez8hQqYoc
	V389oCWn2zgVNUE1Lu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gWD-0004yy-IS; Mon, 02 Mar 2020 08:33:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gW6-0004yI-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:33:36 +0000
Received: by mail-lj1-x242.google.com with SMTP id e3so10718240lja.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 00:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jj+czksnzcihibM/pJBiF9v6X/Oa3Q1y37ZDoMAoK3o=;
 b=KA2FPLTuZNTxG20mxJ670x5Q/MkTw3ryqi/YArF+IRLfOztsEKPS06DLOlYST++Wj9
 XXJ2cA0S1U+mMv7ZYlyuFDuERuA26Jp1mvf7Y9nTgvQHHGsQp5y93Lh4cCfvMLECLvzK
 3pxLld28nS5OyXbz6rwuLCGHcLdG3OIJW5n9rufMbMdWXwB7ywukNvHX1+OwEA5pzTf5
 nLaVjcUVyRNNlxwMr+g+XR6oBkbLmSqKGBPwM1eUr6FjWj1HCwUJynABGruQ46nlPbxY
 eiKiTKA/g7VvG+8GATHTnVprC/YhnJHlqbajXwenVgqtDTnxIRi22TX3kUIE2XLDZ2C8
 NkSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jj+czksnzcihibM/pJBiF9v6X/Oa3Q1y37ZDoMAoK3o=;
 b=Ti4AxpREieCtvyuJUEwvk6RRL8RAwVIolrRdhjx5kX8Bq9Qfa/zIGlr7tQ0pzGl9x1
 vgGzz8aLYLrBEnZ9dM730T7k1Gz/lXykhTo+kVFU0Z0SksHgVcJHd7/+y9jenhv0d98O
 KjxvuCwPibIwJjkP7TKnaoGb0USmoh7zshrR92ZP/+gugdks0VW0oUpS3oNOrX5ac5P/
 gCco3VebcBTfMRWPgzyioR56kgAej4TK0LZAXNa82r4kD2W/lpnQVIK7VW4eIixGSYmK
 GD0R23W+4yFA9WFsra4MBOR1g7RczBqXjgCeMM2JdgsW4IHw7bfjGVk/o961rnHzuolV
 AtJA==
X-Gm-Message-State: ANhLgQ2dDpbbZDqgFfrV9mz8TLZGIxkWTRFDJmYnY2gU9symX1vyOP1E
 gi21yyBl78wYHm6MbbyVH+SuPpLi1kSFlTjSRMaKLg==
X-Google-Smtp-Source: ADFU+vvAO7sF6dKvlWn3obeb7QSbc1SMheAH40VPLq5/KZEo7Jd4FUF6JbB7CSybojasouDEtJcwB1bX4ZBlKwmnK8k=
X-Received: by 2002:a05:651c:2049:: with SMTP id
 t9mr10756201ljo.39.1583138011527; 
 Mon, 02 Mar 2020 00:33:31 -0800 (PST)
MIME-Version: 1.0
References: <20200301144457.119795-1-leon@kernel.org>
 <20200301144457.119795-13-leon@kernel.org>
In-Reply-To: <20200301144457.119795-13-leon@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Mar 2020 09:33:20 +0100
Message-ID: <CACRpkdY+e4ZoOFk_+MnPC_JrcxETWJ+75PUD3Db+=N65S-NRbg@mail.gmail.com>
Subject: Re: [PATCH net-next 12/23] net/cortina: Delete driver version from
 ethtool output
To: Leon Romanovsky <leon@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_003334_847081_EB3ABE7B 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev <netdev@vger.kernel.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Leon Romanovsky <leonro@mellanox.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 1, 2020 at 3:45 PM Leon Romanovsky <leon@kernel.org> wrote:

> From: Leon Romanovsky <leonro@mellanox.com>
>
> Use default ethtool version instead of static variant.
>
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>

These are good changes.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
