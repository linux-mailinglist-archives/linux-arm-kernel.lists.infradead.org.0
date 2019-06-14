Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F8F46BDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5+YiCxt6qN9n7+5PKpJUqIiOG1QWVcDxLx4AyaHjpUM=; b=jh3h4wSSEZol/QYG6bJvUHme1
	HuOJnQTzF1NqvImrUX45V4v15yDWrmuYhpOtuPLdfe/hsf2w6PvBom14gVMeo5zUKZZJOAxhBI4Io
	hO/vrWOhIKjwPv50r1olKDGykcnZuYTf2Dv0S+JxNf0RDCfLPZWEb5hiAw/QYWupLALs+qk5eggsb
	+7mAvCE1QoJ3qi7Of9Di3BoKOmfM91tkd6QQpXcbSKESxbsCUpkKH3DJVagFIgkhIGJqPDXNJcyhr
	qu62QA+exLJgy5M0Bnnq/AlRO6qOR+rHmWhGRe1/z/qWg8euhg1tYMWzyaFOnph6r+EAv9aEbTmxc
	n9WXyD37w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtjR-0005CB-5y; Fri, 14 Jun 2019 21:27:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtjA-0005Ax-Js; Fri, 14 Jun 2019 21:27:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id v14so3936069wrr.4;
 Fri, 14 Jun 2019 14:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=Uc2f6CQXrYqQEI1IDSyVk4ypG7EglesOk7GUtbp0rYQ=;
 b=lmIVJ76ozWQkcY0V1jkobL62yLQMvrEWL08HGyPohsnZKsfkecN4dl/mbRE3VsX3yh
 OiRDzXUTpYRaowIhTahm22tj7biPfwRU3KX9mcP/aqps/pDy77iPhuSqMcRALQEK6LRp
 RfWLZlrd8uHqxRtk9bbnJpALqxBuGbO0cVbh/CmSkD+8D7nXNNmpdxGb8DOcXe0BrCz1
 Z+UUK1SMwiKXybyodFl3PXip69MgA+BRYHhSaNloCfTNv7PS3lx968IYT8Zcf0IH3eVH
 ZrGg0AhI8p+0vTDvW6LHwVSpJI7LhRKFG9WI0hkZOeqkmthJKAbr4knM443MVcvMsfT5
 fm0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=Uc2f6CQXrYqQEI1IDSyVk4ypG7EglesOk7GUtbp0rYQ=;
 b=iGqrKmLcXcggCpyiPQGpdZ/jJBbELCUlED1gCATo3tfKzBjfxkXXK2IgGyUBsEZxEm
 KU43irMI0YITT6hyCwei3CiGas1JcsXA3GekBs1ApSBF7CCFcyvQihUWo1UoBqRiJKJ8
 sXso2DnSNGV/COcr0iRBJBjIedCwZWawYIpxcwnet6++7m7RyhZc/y61H4lxqr3GgQV2
 Dj7fFwP9d3vIW6nioRrUeLIEJ7oJWj25jrC3xLtXRbOuFEUqYBciXkmQuC5HgpuAdzfa
 aTsEum2nH93jx7sZ8MTlziFmPkk3MKLAsdBGUxxE5NDPv9Ihm6750xLn2LIfgTijokpz
 82GA==
X-Gm-Message-State: APjAAAXGuFr+GIzCw6recFFYMjJgjju9o4HDYMJpzmXH+UI0S8D04BRz
 Uk+e/i4FVb7DNAWa90ApJXI=
X-Google-Smtp-Source: APXvYqwHIKIzJh16kp2/Ta+Cp14JGaM4ketsZocnKsCF7KMCunIdRIWs8bJiBwtvJUYTHx3baFU4/g==
X-Received: by 2002:a5d:5303:: with SMTP id e3mr2160114wrv.239.1560547635129; 
 Fri, 14 Jun 2019 14:27:15 -0700 (PDT)
Received: from X555LD ([2a02:85f:51e:5d00:f1ab:2da6:d378:d0de])
 by smtp.gmail.com with ESMTPSA id x16sm2940166wmj.4.2019.06.14.14.27.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 14:27:14 -0700 (PDT)
Date: Sat, 15 Jun 2019 00:27:11 +0300
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To: Peter Geis <pgwipeout@gmail.com>
Message-Id: <1560547631.1367.4@gmail.com>
In-Reply-To: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_142716_655817_8ADB9286 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> The big change was actually snps,aal.
> As per the TRM, DMA channels not address aligned have severe
> limitations, if they work at all.
> 
> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
> combined with your snps,txpbl = <0x4>.

Honestly, I don't notice any difference either way with aal. So what 
happens without it? If You only use the 0x4 txpbl and having removed 
thresh dma mode, (2 things then) do you get bad tx?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
