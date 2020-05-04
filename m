Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1601C3066
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 02:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZFfFO/aOaKE8sRhmpGy0BlRQFIgl3SicFmT03VAVUA=; b=X1mx0OrI4iHq94
	k8xQidWj8JDeeeCJxG/35Jhy5XlBP1/zDU0xOxeUluTVXnU5x+smp9fPhdQUwE3jpokuBJcwqNR82
	ClKVCMSrhttD4YCtH9yHIN1ksm5Zff2bjqi4BE1qtf9si3vCf0vl1P0RX3mAJhs+k/nH22C5YTjXY
	aQY2ADgY3mHlDT8FWWv5h+H9YaFd6mVIn4uA3xiTdX6xsYQKWpU7YYls4XUNDoFTFHM3xxGHLD0qo
	FP6gNPGT5Ib+hw7/UDV8jU1e/EWtGgAI0fI/0C+azb4NVbR5T/u5AATZXWTmXoOmMdFLIeRXYVkJC
	L/bXJHDNDrYagBHJ0Z9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVOmP-0007Gv-F7; Mon, 04 May 2020 00:16:17 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVOmI-00075W-0R
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 00:16:11 +0000
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 0440FoEI021730
 for <linux-arm-kernel@lists.infradead.org>; Mon, 4 May 2020 09:15:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 0440FoEI021730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1588551351;
 bh=lq9Uzj7pb5PQFw+VXMD0iM6sIqPMlYMT850vnF71eIo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HsBDug0cOUu+9rxknFugrSdSxYyIwJWW+s7GijIMgAsUFtnpSIoyJrCDiye8j/kPj
 scqMRUqeJSqFN68aD2vEzf6d6n1Ue6VPpBQaWbCxXrXc4JAICS1nlR4h0brVGviO3Q
 Um+tGVfkYN2958pvKXwzR8tfx0Ym7BsZebBqyuGvoFFH62xgqv30hVb/KC8qlaRXn/
 7Sjf0dNVy8Ov6IVcN+Rf3In46YOinVAtXp3APTbL98oo8HNkv5oeYhjbVZ/bBpgcP8
 v9dbfRvLJB8cy/+S/72yjVB/d678m9ebiBlYDXkKYh4TAshvcuSxQCLS4P9a9zIn9M
 M9v+0sXHqm50w==
X-Nifty-SrcIP: [209.85.217.54]
Received: by mail-vs1-f54.google.com with SMTP id a5so10090104vsm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 17:15:51 -0700 (PDT)
X-Gm-Message-State: AGi0PuY1HA5ZoFSaZa+ti9sOTjRyFigtbHmfRQcVoywWCU/sVd+/3YX/
 Ri6FG/OvAP8dLnGBxznmCq/4e3fsRT4eBnoebuI=
X-Google-Smtp-Source: APiQypJF8ynSDKYMiOHyG945XHqTJ6m0pJp8ZtLPkrwqgVAa+C06wpn4TeCNBGXLAEEkRYNonO/ieONdJXKxdJY3GoI=
X-Received: by 2002:a67:e94d:: with SMTP id p13mr9916129vso.215.1588551349876; 
 Sun, 03 May 2020 17:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
 <20200503132906.GA32207@ninjato>
In-Reply-To: <20200503132906.GA32207@ninjato>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 4 May 2020 09:15:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNASXgD7Y2SToycCLYX2zVN-L5uWRoCzQ3N7MjoT+j0KfkQ@mail.gmail.com>
Message-ID: <CAK7LNASXgD7Y2SToycCLYX2zVN-L5uWRoCzQ3N7MjoT+j0KfkQ@mail.gmail.com>
Subject: Re: [PATCH] i2c: uniphier: Remove superfluous error message in
 uniphier_i2c_probe()
To: Wolfram Sang <wsa@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_171610_381837_9E94C529 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 3, 2020 at 10:29 PM Wolfram Sang <wsa@kernel.org> wrote:
>
> On Sun, May 03, 2020 at 05:38:47PM +0530, Aishwarya Ramakrishnan wrote:
> > The function platform_get_irq can log an error by itself.
> > This omit a redundant message for exception handling in the
> > calling function.
> >
> > Suggested by Coccinelle.
> >
> > Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
>
> Please send only one patch for the whole I2C subsystem.
>

Yeah, and then please add my ack to v2.

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
