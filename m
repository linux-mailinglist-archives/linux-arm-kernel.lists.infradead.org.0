Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DBB7820D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 00:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l70GmMCxEaGWZ3uAbF1PmybtO/x0O6wsYZAPROAQjTc=; b=rYTvA2WxYH0qd7
	2LnK6ZSNf9MOooa0gqL7iuW0c8QA4ry+1xiQn+iwmEkZKuvm7nMtjFf5AZxVo53y73ddYV2f1Cd8N
	hCYkvsTPX28suxKGaxA/dSgrPQrUF3p7pqsUtaNe6KsSllC1oX9/YI6uIijFV4W6EmDE0wI/byCDo
	/I3QzrcQOnVOKYIVmDuV95WNVdo4tBTh/9Pe1tO+Awko6vYTAqoYW7PPk4paj+nSVS2x/WLOqj1h0
	wrDX3GUIw6EBr5BR22IKSDPtRzgr3tTgHuN0sqiar+uz2ZRvrt/G7ZkoH7I3ve5lh/MTqBmhE1UxD
	3ex+T+bNVdjzYXtLdLEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrrYK-0007kK-SR; Sun, 28 Jul 2019 22:22:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrrY7-0007k2-0m
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 22:21:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id r9so56628683ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 15:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mk7OXDT+kyhl11Xs5+A7Dfh2TrPQ+FPHs/EPPvVwBk8=;
 b=BP0qLMaB34B+DIXSaiTJtQjgItAK0otiegqrT+wvlhFi61542p5Lgp/w5DK2PVXTiq
 zzUX/wosUMPaHBNxR8MW0Yltc1ncwU87hI4MvNIs1VqxBMyydoDWrFPG71J+mPnvkwNH
 hmyYomNDCiD3OyOeA8RS4fOymh6JVxqET8zE85wkp5G8E5w1RRkoX3OiquEJqtO5RUlG
 JOOoBllw7fVezK3iSHRXLgefubZKppNpkJkZX+1C6JIbpmZzjL9w4VRG8me7hmB08LZB
 wrsKFBBZUE33o3eGt12v3BlX17qt3jMnutjGQOot9avreFpdFTCn9zkKIdIXzKFqwxZG
 851g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mk7OXDT+kyhl11Xs5+A7Dfh2TrPQ+FPHs/EPPvVwBk8=;
 b=Op8XmfguQD8XrxHPKK350uchRGKOQ1EQsdeumf5v6lsYV3sYS08ib25B2xOGqb87K9
 kzU3sF9V9Botrj9nqdAtOTpz8R9dBEEg86+NaoWeE9aaqc+ztBmHI96earsl5Qt2RKt/
 EGNETH+slzTOnl6wB1jOYWIDt5LXM8En89sDN/WxG/Q6ETdzb7x+o1/doJG1lFy55Uvu
 v1Pp0U6p8bUv6gOs0zkQUHbyYqZ8d5zHXtlj7YXftx3PBDVdsN7vYJHISkhL81x3E5nZ
 cUV2FZ+fOmKHlZDA7UJT9DpYxiEAGWhVLVJTC65V/7CrvA2Y6HZJoyfIrFUojKX/QS94
 MOTQ==
X-Gm-Message-State: APjAAAUUtAqvKBa17y99dien0sGoFWeEy8b0e9S4aDYUMW0OswCy8E7e
 SWEdxGUiSsyasiBAivJ+MQM+YlGQC2IttkOTvOEubA==
X-Google-Smtp-Source: APXvYqzHx3cyR6cCsr+RjAbHnpoqvW/Xr6Gb0Pun7EubId3KLjCF9FYL2Y9Vgu+ACOpHAf0sVmzLyABTl832qjzWmrI=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr8063325ljs.54.1564352509236; 
 Sun, 28 Jul 2019 15:21:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
In-Reply-To: <20190706164722.18766-1-gregkh@linuxfoundation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 00:21:38 +0200
Message-ID: <CACRpkdbo77Mq_GYZ+j+qDiOJRbDqkEXtLwoQx4Jh7FhVUbgYBw@mail.gmail.com>
Subject: Re: [PATCH 1/3] mfd: ab3100: no need to check return value of
 debugfs_create functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_152151_065266_85454DA0 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 6, 2019 at 6:48 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:

> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
