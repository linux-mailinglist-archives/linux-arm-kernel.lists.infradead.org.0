Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B98E869
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQ2HG54v4A9VbZnIzlOXcFuqV0cRZb5zJBEgbon3Ov8=; b=WzryrU8TirLk+J
	SLJNb6YvYEohQ2Mjy/8VKJbYEQ3CcnWINmvIIQ5H9H6r9j3/D0SAymgxh7EONuJelF93okRRClfnr
	0rZZrbGXJhuYJkkccEMiuEDMyRZKxkIgJLcWxcoAsBwnLr5Dgi7BUM5VVIzZV4/vXVHI/eQzMs6X6
	7mf6AcKWo2KxLUDVMbpt0mAKI5ES9M171ZLP0vNFJLdDlOiD9ZsNhNR77d05mpXWKW4k05k/wihq2
	NtnoAuefmulk61aTW3mH+XrQXqpQ9PyOUgJjLUrIMqVuMVmeDNoSt/2+TZX06TAfQBEB9dSfpV1Va
	qxya+4mezZpFVuyEC9Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9mo-0004Oy-HE; Mon, 29 Apr 2019 17:09:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kr-0002nw-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id z26so10097437ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s/4xwtUG/cKwNNv3hBRVLGCWHejEs70XonImzRvFPlM=;
 b=PosPp5gys1RLkjRFXyznCdadARcWawPbjUCapw+0DkAT04c2KewGwgcUnjlQPjN4EL
 Pay6WfEsAorzRzfqjbxpQwvhj+S6BsCkJF1Aj/M7GgT6fkrRBhxeSA8oQjZ8MnXNL55g
 RcXAyp/5LNr1zxaGspstUvCDRo6tzUVhBjojVUxEfZvVacIgWEPLpZNp/d7jQFI1fVyB
 jBmHyMU4J//xSQYjFgUUPZEDvadZ7Oymss3hEzQe0vrYoc0kpB0U+sL01MPGVQkfIHFK
 srUoGYSDVaayKysYH3dUnnNa9FdgeyiUulCNS3sfKykmFN0ym3aA3t+xY8MOVllZWGAX
 MHDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s/4xwtUG/cKwNNv3hBRVLGCWHejEs70XonImzRvFPlM=;
 b=jaU2KrZnzJNs8qzhFTTJlK7V+s3LN1Do20s36iP5mAcfRuNOllCc0anUK06PQRVrUT
 BRwtZyQvrWxDXvVIOkVAz2Qcm3/yEgCbdWCZKh0VdYqYNRaHJhdvjKSa6y69YO7lZ2fc
 oRL985biuItZNKGMwUU+onLAg4L6P+FbXNkYQmcy77h6H/uq2ErcBkvQ+/1XDdH7FyYl
 jOHci7g33rVEPbWNj3hDHdXfkSchqp83yAVCzmTbbY98pNlNjhVlhYIIKtDDYkxsebt5
 n/Y2ybgtqp6BPzTJf40bFi1D3BCflQ0YtcYt556l1t/HE6TLzm6VQRSDpfpByt0ymJF6
 PVwQ==
X-Gm-Message-State: APjAAAW5x4mTLb8Qvnybo2hpH7WzBX3K1Ox2auhYYR1b0af2987WLrJS
 0AXwrmx5ofg5hVHoPSpm93N1Yg==
X-Google-Smtp-Source: APXvYqzoR8001nycqA47aAwHYB8TFNG6jxgEY1mY9b15Zx7v+/BxfcA4dwe4+0Gp70CAao/rEQLNXQ==
X-Received: by 2002:a2e:9b14:: with SMTP id u20mr14356452lji.67.1556557667904; 
 Mon, 29 Apr 2019 10:07:47 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z17sm6926179lja.26.2019.04.29.10.07.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:46 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:32:29 -0700
From: Olof Johansson <olof@lixom.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: add aspeed folder and misc drivers
Message-ID: <20190429163229.ibeny5r4islxiyrp@localhost>
References: <20190422173838.182736-1-venture@google.com>
 <CAK8P3a0k_8+R9FeyZsL6Egvi1Z-G0VrvR0TWXzGHryqxTr6thg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0k_8+R9FeyZsL6Egvi1Z-G0VrvR0TWXzGHryqxTr6thg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100749_841007_90991FB0 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 gregkh <gregkh@linuxfoundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:08:11AM +0200, Arnd Bergmann wrote:
> On Mon, Apr 22, 2019 at 7:38 PM Patrick Venture <venture@google.com> wrote:
> >
> > Create a SoC folder for the ASPEED parts and place the misc drivers
> > currently present into this folder.  These drivers are not generic part
> > drivers, but rather only apply to the ASPEED SoCs.
> >
> > Signed-off-by: Patrick Venture <venture@google.com>
> 
> Looks ok, but please resend to arm@kernel.org or soc@kernel.org
> so we can track the submission and make sure it gets applied if
> you want this to go through the arm-soc tree.
> 
> If Greg wants to pick it up, that's fine too.
> 
> Either way,
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>

Applied to the SoC tree now.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
