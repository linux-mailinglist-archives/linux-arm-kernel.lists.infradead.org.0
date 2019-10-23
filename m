Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EB1E21FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FfhJcqhLHjscg3iqQXIkwfUmur0vXPYmgsczohjxKEc=; b=GyWxEjlcpCOqzaREVY5MsyMpZ9
	eyG09D1lVSrOrV3HKiDvu+iW1gKwAceveGrpkYoRGbG+iGPBmpQ9zXJtansPg00GIJbS8in8oyipj
	FuJZSFIO0maPaB6R/JZm5HrK2tOM2FTS+xrP8LyMCbOb5wiY0kYQ7ksdk+e2zvPrtbx1weTl5xf5l
	Q562xyVjogel1zALq3xT66W2f2t6KR96523P4lRqqz/r34OqZ0WR19o2rt6bnSh/4iC6xmE9RjodW
	lD5AP8sxPuS9kiFACLtFnPffNNw5SCPseU8nRZVfnt7ccsovAHsSfXWLQHS9miD8B1V2iY4l4t/NN
	b/TrhEVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKed-00072W-Py; Wed, 23 Oct 2019 17:42:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKeV-00072C-F9
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:42:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id f22so20500939wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 10:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qyufOw3HRZ5Y+yJocgS7vdEDGBbk3VE9ga0vjTsSbTQ=;
 b=F6IWwyvR76H6/j/VtUC5EBPTbqS+a55iPP3aSdS1XpvvK5b53hVUMZJmZ9W3nschI4
 x5FTXPz57+PPBt/lG3PBlGHebT2wZkd0BtjvTwpM8JP7ZqGFIs+wVVKThyHQGjjKcHTU
 EiJQuhgocG8nBomI2q3BDjBRuEUVrS0Cx0icvcbfjIjOCfW59mT6FPLla+KvOLaU7HF/
 JaSLYYSKdDFsvEzcmqZVQn6y3cFWZ6nH+pcMZYPQX6eWWkLk9MMxVkVvlk547nUPqFCe
 MTGULciOp9fD0ckimYut8f7bTUFqmI1+kPyeMr+rlNkN5TJo8rqK+mCYuJAKsbz3A6cw
 BKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qyufOw3HRZ5Y+yJocgS7vdEDGBbk3VE9ga0vjTsSbTQ=;
 b=H7na8VqKOhe8ymxq6pZizERtjA7kgpkHhIwCUhzwad9neVvhfXSBestL4irY9o8s4L
 hu7VaDOlcb49loYlhPjgVLqbKzcIuy31d0DA1qEwKztqcKNA4n8ORJiLkvx6c/gVbGbt
 ezYjmV3SokJhWx981z5Phd9RlkxwSViblVey02qN7UMusMKgBgSL2IK2uAa78jT+Hr+n
 2lcfKq891OIBqYvi52icPEAJMta5wZSxwS+xxvDHSqgssLvuwwGIv6fIPBrCXP1coRoa
 628ex8nza3N8nMVvmuqmPkUp58urFmeRqz4D4vdJ3iNOnKNgqLor80ZqYGjvPpem92Gy
 g3ng==
X-Gm-Message-State: APjAAAWHLaDebwDJ2qsbxPfk7vwuvbQNNaLLVwXrs0CjspRJHXGrNkdQ
 ux/0DopP5rezGZlcRe5421I=
X-Google-Smtp-Source: APXvYqzV3LbOWAqCLGm0AsZaPgIlWEQdvlIrvLWPLD7WRj1pK0qJQkyQ/7osnO05sUmPsw0AcVfEPw==
X-Received: by 2002:a1c:e40b:: with SMTP id b11mr999746wmh.152.1571852549878; 
 Wed, 23 Oct 2019 10:42:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w22sm7695035wmi.7.2019.10.23.10.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 10:42:29 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com
Subject: Re: [PATCH] ARM: dts: bcm: HR2: add label to sp805 watchdog
Date: Wed, 23 Oct 2019 10:42:25 -0700
Message-Id: <20191023174225.14337-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191022221956.10746-1-chris.packham@alliedtelesis.co.nz>
References: <20191022221956.10746-1-chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_104231_507973_AE8E39DB 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 11:19:56 +1300, Chris Packham <chris.packham@alliedtelesis.co.nz> wrote:
> This allows boards the option of adding properties or disabling the
> watchdog entirely.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
