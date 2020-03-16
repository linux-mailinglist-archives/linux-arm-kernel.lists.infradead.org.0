Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05453186125
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPMk0NNxDs9z0wy74pzSUygaCSFoJf1VdhU1mxyzXKs=; b=FRa/OX1BQv74Gl
	9iG9kO7Njlmi0w65Yk318ODO6KLUGocX7vIKCSIRvLKJQG6vrgjFVFOYx9jhJ4YdzGEU0egT1h8hu
	EFKExsMeU/nmqmyz7medUA5Hkdry7glStTENNNG+v1MaCXmM3fLWUfkWQjwNPvU7Cl6QdsVrYy+Wu
	qnLhHqifOkAlFEaw29MeQDlDhLfwHiYa9LkPryWiYSfl6NHLsEaYj3HkzTEr56PGBzY8TRLeH+XbP
	6SR1mwtcMoIhV+b81w8fNuSY0P68ONZBzTueFaAA0amZo+w2jBik6LIhQtfOuyaZXYZw8qnxMkc4Q
	pUJt6RL054PusNVKGZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeEg-00050b-Ox; Mon, 16 Mar 2020 01:08:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeEV-000503-PA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:07:57 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8FD2205ED;
 Mon, 16 Mar 2020 01:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584320875;
 bh=w8UFak9mwRktB8j1PIcCa8pAcucASI3uNlGd9Kq4HpE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hfE5VSZ74YXxfdd/Cx4j1B32EaJXUvcc1w1Nv1p6ZwFqzs94GLGZvRs7WmvuvGPNY
 RSGf2Lu9hpTZ4PdUQB03eHjyFdbhQNpsPGrl/QN9kZitIQPn0slA7DpPT1lMk0r+8A
 xQw4cMOgoPZa//zwT3JrogfFL8CabpPiyYxkJUsE=
Date: Mon, 16 Mar 2020 09:07:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: fsl: Add TechNexion boards
Message-ID: <20200316010748.GJ17221@dragon>
References: <20200310180825.10111-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310180825.10111-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_180755_838616_7B304377 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, otavio.salvador@ossystems.com.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 03:08:21PM -0300, Fabio Estevam wrote:
> Add entries for the TechNexion boards.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
