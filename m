Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F364E2B9BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpGWhnngOvEOGrc7D8tVemzWbSwF261rOVOHWTj3Fos=; b=pDnMBiuzt3Qcjb
	JWT76b/w2sK9t+Dv3JIbm/wFBHJ0rbTjfL1dsLHCu2vrectdxvVAANId5A32QdzEMVmLtX7OeBkDE
	2JBhtS3ImpfvS1phEazdyeRRb5LJwnKMcB9XJx0Hsgp3GQhpRErMYxHXaJfDnEJYQYWa7oTohbKl8
	aUoNKqUPsVoozp3V9346VCZGvfuWCSIrsURklayphqDHBR/jbBfMrea8ekvLNvT+1i/2RoMtSDU/N
	AzzsYtUG/MtEcym5ikIBX/RVnDFt/ZtuAuN/Gzaam3d4KJ9UDMTaaCxRmaVZRFkAvNlswIXWN13Gm
	4lLPE85/J6JJ4n0klZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJz3-0001H8-LG; Mon, 27 May 2019 18:04:29 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJyv-0001GR-QM; Mon, 27 May 2019 18:04:22 +0000
Received: by mail-ot1-x342.google.com with SMTP id r7so15485429otn.6;
 Mon, 27 May 2019 11:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qc5bwgG1nJlpiXW7qOpXYd6aZ6dtl7PwtbbKYJAwtlk=;
 b=QT+oR2PzBjtJAJ4Q9xeAgE/GB4/+a9hDfoejIBw07ZAUJYbrWe12KnBXyT6Q5/iLMx
 Ydgqpnjzkoq0HKSc3sdBbcj592NHjQe33H1nmmu3r2AaqZuH9kSEfW4X1IjSYDJ9MXCs
 KbWJxL8Yq3sTHtuZ/d8J0BUr3hat6BR4JI1NDD11dQrfaHGgkmjqml3BwckU8DYQfO9n
 NNh3Daph4Uerkcl1CE1+09Xt7BLTuLkxJBL/6jYBXCOXI9PjnH7J+ihDWH8uCDFjUnT5
 YkqoQY84Fl86gGlQtIxjqbqRWGwMcDNTQyFQcKnD4RXyGWWCskBQpIqLW0rWVIAxk6jB
 w55w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qc5bwgG1nJlpiXW7qOpXYd6aZ6dtl7PwtbbKYJAwtlk=;
 b=iLx5fljQb93TPi/XSXmambd9afNPHgmurETPf8i0yJcdJLd2wvTrsRHQfUvU7HEtqo
 lrqdhbe381QeeF6sj4tj427IwP4xN+OCO5vjOUrvwIrRLkzWpa/lgfe2fbygozMZQpj3
 kpEhap9tXngJByUc6kI83QiBY8y36+yqSWr45P/upbLucMUX64pcbNp8vr4L+fMUYNvl
 qlQ1agpLB7ttsqX2bdVrrVfm+d3Z/vt0hdFu7mNXvx2wMgtDB+AS3wfVWt77CdN3+L0e
 u5EAtAw9kDDMKi691UxEeBCujla2Ra+qkCUxN8cmggvfIOVbr9g9RA0MuKcqspeoMlKA
 RBmA==
X-Gm-Message-State: APjAAAUnYsOG0Db65cOda97ckB6PhRIU3/+tMlkqAMU6QgmX7V8pLhSH
 FJRmwwpsQ1B/43vUwTiob1uUy/+nNcIbtxU7XsM=
X-Google-Smtp-Source: APXvYqyG/5Xo+qXItm0oFZccwmyw4v4GWKwCndcRrcwlFCngOkzbwFAFOT2+r1bf4fzOZCZjIfstm/Kj4oTQvjej1Yc=
X-Received: by 2002:a9d:744d:: with SMTP id p13mr50944036otk.96.1558980261008; 
 Mon, 27 May 2019 11:04:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190527134623.5673-1-narmstrong@baylibre.com>
 <20190527134623.5673-3-narmstrong@baylibre.com>
In-Reply-To: <20190527134623.5673-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:04:10 +0200
Message-ID: <CAFBinCCD93XzMp8gbUUc_Q0pHt84=zyn3_TuPCVUpnB8LK48Fw@mail.gmail.com>
Subject: Re: [PATCH net-next 2/2] net: stmmac: dwmac-meson8b: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110421_857204_ED714C38 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:47 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
