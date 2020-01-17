Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E19D1411A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 20:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75A4ifWeni5LOUzSgeiF7Ts46v2TxENrZQJy2TzoFcE=; b=XJ8kqC38gKxsw0
	6FSt7pdAA2Q+zV10oNMBjTv2l2nGBWsnnQdMlKJe9nzIwvgjazrgFRrMcscKrVrr/8Q/dR41wM3ZG
	En1hFsZatLfNmJSvGx0QCqqfkUQF7AsymybsIdUjLx/Ue3zW2pXU2d13KMMHiywZl7sAFWJs9Vwx5
	6AO8SnMXidij1or+hWs24Yyf7abC5AG1waCESU2HnFAMeLLW+RCOqng6N2fauvgNnanRSM2tGW62a
	eRyOhBzYtUwP2k7ki9Tpy2p36yGWUGrIK4omAaG4XwrKxpITXjgaFtDji/Vs3pVtCGhzFl5vFdDtM
	OAyv57+2j5vV7RGeRC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXGl-0003V2-Ej; Fri, 17 Jan 2020 19:26:59 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXGb-0003UH-JA
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 19:26:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so27578805ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 11:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eWPxiqs2+iCS7ywgBZoPdcaP9J/JZnx6nY7cUof021c=;
 b=V07u5up/I77H9UHL2RgtE8EgTvlvwfaEFYjFWyiW4+y3mmsf6hSpIL9mWxuD8JIASe
 3SSst9qoCTXer85nAaDXwyv/YnBEnPFcdRJ2ybjqyOWOd1gg/3Kd6GrFQfpNmDHi/BMP
 w0ZMrjYcUe+KlA5/lADOtOVfp712SacxUQBPD0QJjcff8V1bsR+QbUjR7dOF/lb0NN96
 usrzIqp2q/vX/xCnYHVsNkAn2erp5+VtyzupP9SaaEZ0FD1ww/8EO+YxsI5seKUG4Cw8
 5CMzNcoox5gW2zipArH3pjEATR80XUQuLFCaEDPaEVYFZGTyxdW97XFsH/XH+eENVwM2
 htDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eWPxiqs2+iCS7ywgBZoPdcaP9J/JZnx6nY7cUof021c=;
 b=jxl1Ezc2lHKA6Fw2K2eAcRCmKn+4gYaX3GJJgFHZ3WQYl9fwq3If+pra/MEdD8OElL
 qg4a1iCXaM2gswKP7twYuzlJeZVxSBHvpFOFBiGdy/Kh8doJ4aHV3dXekWZVItRKtVhN
 R05Bx7JyzZ/RYKVXEMIh6nRbhZfVyYYOtg3V/fIMoY/ht4z0gj+HBKgby89J+4SjA5s3
 9v4zZffSb8JT3OFj7WNlTqeLaa8FT4mfvGTmTKS80Aox+8X+1G8NqnNpjRrJp/8pWfMi
 0yP3tKD9y0gIRn7LaIStAIuYBohkaBmKZbv/UzpCUfs8GlJR+0a5/LtEgif9ixjZVqKm
 PHSQ==
X-Gm-Message-State: APjAAAW9295BxNHjzrCHXDPBdru4j+H/Vmr7nfP+gAXxEayEPabAPNNX
 4kXrv9sa6up3LqQ9Id9EOImv2A==
X-Google-Smtp-Source: APXvYqxdevK1ARk4iG2CURRwB6/qFK6i8RWBWNjzDcLM/Zn5XeE+WkyCWl8OJDp7suwJT87EBjEJlw==
X-Received: by 2002:a2e:9013:: with SMTP id h19mr6192574ljg.223.1579289207431; 
 Fri, 17 Jan 2020 11:26:47 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w29sm12592801lfa.34.2020.01.17.11.26.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Jan 2020 11:26:46 -0800 (PST)
Date: Fri, 17 Jan 2020 11:25:55 -0800
From: Olof Johansson <olof@lixom.net>
To: santosh.shilimkar@oracle.com
Subject: Re: [PATCH v2] drivers: soc: ti: knav_qmss_queue: Pass lockdep
 expression to RCU lists
Message-ID: <20200117192555.baoxu4xd7krxgfjz@localhost>
References: <20200117133048.31708-1-frextrite@gmail.com>
 <5d77df7f-8693-0232-dbfe-0acfc37e040f@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d77df7f-8693-0232-dbfe-0acfc37e040f@oracle.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_112649_997852_C3877E78 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Amol Grover <frextrite@gmail.com>,
 linux-kernel@vger.kernel.org, arm-soc <arm@kernel.org>,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 10:24:04AM -0800, santosh.shilimkar@oracle.com wrote:
> On 1/17/20 5:30 AM, Amol Grover wrote:
> > inst->handles is traversed using list_for_each_entry_rcu
> > outside an RCU read-side critical section but under the protection
> > of knav_dev_lock.
> > 
> > Hence, add corresponding lockdep expression to silence false-positive
> > lockdep warnings, and harden RCU lists.
> > 
> > Add macro for the corresponding lockdep expression.
> > 
> > Signed-off-by: Amol Grover <frextrite@gmail.com>
> > ---
> > v2:
> > - Remove rcu_read_lock_held() from lockdep expression since it is
> >    implicitly checked for.
> > 
> Looks fine to me.
> 
> Hi Olof, Arnd,
> Can you please pick this one and apply to your driver-soc branch ?
> I already sent out pull request and hence the request.

Hi,

Can you please email the whole patch with sign-off to
soc@kernel.org? Otherwise it won't end up in patchwork, which is how we track
patches and pull requests these days.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
