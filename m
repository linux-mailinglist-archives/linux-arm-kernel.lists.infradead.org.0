Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2571BD4E8E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1y6Tcijx/JbGxm0vH3TgzThuDvi1G2ESqQd8cU/JmY=; b=kwm2sM2sCQxpyw
	mY+J9SrvwQ9brh8WIV1IRuRVhTl3Zy63+ttYCUjz7TJ1gM982WZB+P88FbwjQ02tOgIk58j7uxCtB
	yqRP+dWeFElkbpbNOAGsCHxLusa0Fl/9REqYffwm439ttczP0HNEucIEAx+/O3x8Zct1TJnNUxNqd
	v7sqAoVwld0ul7axBZqN2gIHLaKCwy/zGbSIiPiBr2A+PMy8Y38Ys15qFCr07nO/4IEseCXk580eo
	/eL+J4xvrFSLUvCWNvr4D7ucPaug8kvqoQc7EaPS0J5Kh226SPZEVTPBUILKRC+gE/kfKC28vsEQS
	m2Bm7bm2Lf+JZUgtnsAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDa4-0000Gj-La; Sat, 12 Oct 2019 09:20:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDZv-0000GB-1q
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 09:20:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id y22so7510826pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 02:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ehUM/WBw3pdMatDNIG/NmJBny6boX/xzAevYcq1y3WI=;
 b=SoKFSfcFZxMhwGait6oPNSlWGbZ6tT3UJA0fzx6H4Op9U+ZnvVd2fWviQn/HPGImqQ
 yUTYTv6tgMIWC2YuCrDSMM9c2Qm5hXSdXlZzyOdIR6KMimoZpjFcBlCon6f5O0pIBrGZ
 A7sw63BvtcFksDuoL3T2vyoSibPPbU5+hJ7lcLiIoEx+80ifWMOal9UaDWt7sEAxV0Au
 EoVT8sBMJBpiXKgfxjkD0SBdgOcUl5NlJWvw2Vf0RUgQHimTcRjQOBkUHg7ZomocqP5N
 e7ZGvAC+w8MBzex7TZKynHKgXY5GiWhPPzOX2RTtNfd1h9uD3FYxAX6GNJD7A2GdvrU0
 5Z1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ehUM/WBw3pdMatDNIG/NmJBny6boX/xzAevYcq1y3WI=;
 b=Cn7ctak6zwTd7VShurWNUTVM39PQCcYoFp7S+i5vtxqtwlSESJDcNiqBvHa4U5ZXQK
 o+UolIk+58T2bgwribjsr75m61kgfqbegHUF0IwlkgpFazRyN5ruYXadQ/j7oXflWJK/
 IgYjafeAVJVxMccx7UotkRaZJHdKRF92HAJ8dNie2IC0SjtGLL8KLUA+6+bKjqB3OLZW
 ulywb1zfDwTuRUIyFnPXmtakAG2xcZ6QNDp94A0uj/n5VvG7+L3qU2fD6MR/8vGgTPDA
 ASuuFMRzqmK1xY4VXzIC3nTwyoit0S7k9OnpAjqy63coglbApup4br+hUUs/7afYteiZ
 /G+Q==
X-Gm-Message-State: APjAAAWPiS9H4wQ/ApqoJctkVDo2VxrMQtyKJBhVa/DymYSXgEnfWztX
 6wULqBh0Rf94Kb/vktyfBxg=
X-Google-Smtp-Source: APXvYqxxKNdvbYG2DN7f+dUkO81yXdWplhYAgAuU5ikwtJwNGQzDA//XpuHUIXBJ4SNeMmywkfV2uA==
X-Received: by 2002:a17:90a:fc82:: with SMTP id
 ci2mr22883554pjb.72.1570872046660; 
 Sat, 12 Oct 2019 02:20:46 -0700 (PDT)
Received: from localhost ([106.51.243.12])
 by smtp.gmail.com with ESMTPSA id t3sm15443433pje.7.2019.10.12.02.20.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 12 Oct 2019 02:20:46 -0700 (PDT)
Date: Sat, 12 Oct 2019 14:50:43 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: NOMMU: Fix exc_ret for XIP
Message-ID: <20191012092043.GA5198@afzalpc>
References: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
 <20191012063725.GA4813@afzalpc>
 <20191012072450.GM25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012072450.GM25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_022047_117517_742BD2B5 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, alexandre.torgue@st.com,
 linux-arm-kernel@lists.infradead.org, sza@esh.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Sat, Oct 12, 2019 at 08:24:50AM +0100, Russell King - ARM Linux admin wrote:
> On Sat, Oct 12, 2019 at 12:07:25PM +0530, afzal mohammed wrote:

> > Can you please put this into rmk's patch system.

> Please check linux-next - or see 8914/1.

Oh sorry, i checked only incoming in the patch system earlier, didn't
check the applied one, seeing it there, thanks.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
