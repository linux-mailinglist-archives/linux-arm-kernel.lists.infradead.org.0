Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B4B1715AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrkv+lvTagmuSzAwA7eKxAC2qRAg+yWl8DKpx1azFdk=; b=upNGYhJUoEiOHM
	New0hFAkaf2skM7wkn0ODET2tBkQiPfuUjqbGia9RhRP3VHnUoilz5A91T5Sae1/wHSqmqkSU8ztU
	MPddTWdMgWaJX2AIARL5v5ej0bkEVYmBYg0a80j+LBnjvv6J+O2JnvGqQD0bE5yReRM4KW/dNKbI/
	NUwpRdiLTFhsh88odOdKbasF/1RmYfkwlWSkTE9ZhBLIsX+kFaesturzYF6FcZspBuTD7eAtUGyA/
	NsGdTwv91MiwRTSJHmqjr50EnonQS5LIpmTlHuFXFeZsxSc6xGqWGNYvCTxZIK5ok7GSFAkvtdXYK
	ZvRVSU2GpaK2hzf4aHMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7H0r-0004N3-FQ; Thu, 27 Feb 2020 11:07:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7H0f-0004Me-Sh; Thu, 27 Feb 2020 11:07:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id p7so995197pli.5;
 Thu, 27 Feb 2020 03:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lmJQ36No1Gca/vcFrG4Eq9htTy7KPRzUbksdwrxz8LI=;
 b=FY89/SsX+eLNCZfl66UEb1ue7T2rDlxc39BUUNyQcUvYHLhQYmTZm8AV265dDcZriC
 n+pnoFgE+Sf8zXMbshaCCS6PUdHyFAtJ6zdH/VH1FXYuwfzu7iVLsjLF6SXNOrrDux5S
 VamD+96xP7YyeTt6xJaJYHlRfPSsbdooqEZo5JblB/xTNMzIpcuEBudbBh1o9hd+8Pp3
 VCC1Cl49y6FD+xnV0DQbsVUKowy7XWxJSXmwRChAoXpyUp1BbPkGQQ1IWMsgmCulUb0i
 idnYS7ecLxRWLTUTaFORqK3tstLgLRTwqSSk0D4o9TOL/U8ZbVv3Bk/xfDvuCNpgSmSI
 BGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lmJQ36No1Gca/vcFrG4Eq9htTy7KPRzUbksdwrxz8LI=;
 b=q79DOSKPRscjn8G3QT9EM8ifMmmzaeYiAlKykfyo3kZzBN/2Wazl49fNTRShDjYY1Q
 VirxGOG92f482UCO3wWvClw1i7ijTOUXKmu5ZhKI0S/QUbFR1b+YwlSKFkgCa0NJdrJY
 tym25gWEXh/mHOiI26+kRbO+Ld9lG+Kz64qin+opkWwqudsaXnUvy8AuKWUK6hS6P4BI
 Xk5IDjGnXUhdFBck/5UJhVhEzw/M1c6loRRnn3wDyGjNLzyvEXs+8Yq1ycMsjTH137aJ
 rEiLWYAD6kwJoSd67L0QNUvtiih7ImdhCAvOFaSmrfzdeMpNiklFyB7uW4VXFyPGfnL0
 J+NQ==
X-Gm-Message-State: APjAAAU+i5iNVl+4vRndKEL8QUSor1bS5NAKFq8Lu/K7MiTH2urpVlng
 iYunsSkL+GCdMtSrNT0QamI=
X-Google-Smtp-Source: APXvYqxWerA+MNtWPhmtZePrzWtN41f/X1PPHbm1Zy+BYl6m6MsiGmn5uHRszUhnUu+SXUCNhUoPbQ==
X-Received: by 2002:a17:902:8b89:: with SMTP id
 ay9mr3891143plb.309.1582801636613; 
 Thu, 27 Feb 2020 03:07:16 -0800 (PST)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id c5sm6662799pfi.10.2020.02.27.03.07.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 03:07:15 -0800 (PST)
Date: Thu, 27 Feb 2020 16:37:13 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 00/18] genirq: Remove setup_irq()
Message-ID: <20200227110713.GA5708@afzalpc>
References: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
 <87y2somido.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y2somido.fsf@nanos.tec.linutronix.de>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030717_947813_C1F87E62 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 Nicolas Palix <nicolas.palix@imag.fr>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Julia Lawall <Julia.Lawall@lip6.fr>,
 linux-m68k@lists.linux-m68k.org, Michal Marek <michal.lkml@markovi.net>,
 linux-rpi-kernel@lists.infradead.org, linux-alpha@vger.kernel.org,
 Gilles Muller <Gilles.Muller@lip6.fr>, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Thu, Feb 27, 2020 at 11:31:15AM +0100, Thomas Gleixner wrote:

> Vs. merging this series, I suggest the following approach:
> 
>    - Resubmit the individual changes as single patches or small series
>      to the relevant maintainers and subsystem mailing lists. They have
>      no dependency on a core change and can be applied where they belong
>      to.
> 
>    - After 5.6-rc6, verify which parts have made their way into
>      linux-next and resubmit the ignored ones as a series to me along
>      with the removal of the core parts.
> 
> That way we can avoid conflicting changes between subsystems and the tip
> irq/core branch as much as possible.

Okay, i will do accordingly.

[ your mail crossed my v3 (only one patch) posting ]

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
