Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945F4185501
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 07:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LXr/GaQZhQKM+f3UDiXyunKiiaJmImoV9cJ2q5ba2c=; b=AFgV7EzqsAf3/c
	LrCP6uyyuq/LoJghMdBJLIspAtyG5b8xvUYQFC6z+jGtlHj9h1oBtdPuAUxsb+HwlES/+IQym5MFW
	l+pFaLmYu7BTRfYwZqnCuuJZ+XQj0qGg3dkTSsi6A1GVETGJhLam5d3cgYw35h6MjBNwlJIDMpRia
	XrT1SMA02i0rD06ujUCJUi6G82T/1VW3L4XrB0Cmjynci+/KGTJq8oTrpHiB3JHr70DHTHN+4uh9T
	d5pd1tThZCee6/7+wHRJPNbMeefVVi1nZLjuGzsXGHd5lLWTUklRRtHjiQXMJUFELkFYs0BwkS2Qo
	niuE03Ykyty6aqEqAocQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD0iJ-0006dX-I7; Sat, 14 Mar 2020 06:56:03 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD0i7-0006d2-Hg
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 06:55:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d8so5523275pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 23:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xbsrrOUuOCaew5V0EWs0+B+Jp0347VeucEvJJNOWq4g=;
 b=Kie63I7dqrJ+CeU89vuO7pifO87HKB1RFY03QprPlryaQu20cucHqdDr/NbbN72R8s
 Kkmvk5CRC3phlToat4QVCDWjgXXwgvzE0UTFdnza6TvBdPjp4i70j/RMi4Zk2W16/TOO
 RrHX+5KF9kSSPz4vg5YB0DL+DIu1tE4/dgwNbhQVSUjdZSuz5e8nVZtodHQf+ExELFBc
 xbbWEwa/8b1QyWp2r2NGH8RnsTwH/1dRv/Cybdzfdq0rjeEtin+4/YnwQlmGCzAAP+9v
 JZIEs4tFktLsEnjHWRMTSvz6uVCekL3ib5cJzYddrnsOG92x0kS5JAFd6t/ep08CfkGD
 s4+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xbsrrOUuOCaew5V0EWs0+B+Jp0347VeucEvJJNOWq4g=;
 b=RHCdXNWq4LWMoILk9a+l5qIoukXq2hRLixI/vAd7UVF1sYwMKfCfCUm1Dkia1EykxR
 BUc/y0fAjioR/PMXPGVPTgnPuu58iluHuy0dJqah3++Tk7pqq/b2x9HK/wquVqO9hDnP
 3zl2lkri/U4XZI60jmh+7PvQc9n1u4O+AJCiAnVZr0VKWjPzu6EjAIztc2Mgiq/h/qLl
 LwyOPadOv07k1KE9bw46qouVYIQVq09gAAWTg56rDsxSdRUKHN2nnNypaxzxxAUbkzh+
 KhG6h8nqeXaojHgCX4sEb6rnByyyjWCAL+rkLzPngx3QWJmMZJFOhhFim04pcbcs2q/F
 /Y/w==
X-Gm-Message-State: ANhLgQ0sC3KviABdg3/3hbyoQm+tQVUGRb91G961ZlJBc6OduDtYfik+
 8r5CKXTk07CmkTuYfb9CbnQ=
X-Google-Smtp-Source: ADFU+vuNd6Tp1XUCLCGd+43lz8+qZo3gUwgEb1CVKJs42QFxX571L6En50gRptDRWtjpX1EtuWwuSQ==
X-Received: by 2002:a17:902:9308:: with SMTP id
 bc8mr17473083plb.268.1584168950505; 
 Fri, 13 Mar 2020 23:55:50 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id y18sm734349pge.73.2020.03.13.23.55.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 23:55:49 -0700 (PDT)
Date: Sat, 14 Mar 2020 12:25:48 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200314065548.GB5285@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
 <20200311131210.GA5115@afzalpc>
 <20200311160307.GA15464@alpha.franken.de>
 <20200311163249.GA4984@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311163249.GA4984@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_235551_610160_0A8D4345 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Mar 11, 2020 at 10:02:49PM +0530, afzal mohammed wrote:
> On Wed, Mar 11, 2020 at 05:03:07PM +0100, Thomas Bogendoerfer wrote:

> > in your patch. How can we make sure they are unique enough for the use
> > case ? I guess using handler as dev_id does a better job here.
> 
> There was one prior similar usage using string pointers, another way i
> have seen is using irq no. itself, 

Huh, that was a total nonsense statement from me, considering the
expectation of a unique dev_id, i don't know what i was thinking at
that time, though you mentioned about uniqueness.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
