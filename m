Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E5E1F05DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 10:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMwPHp+HIoFS8QipO7mJ+vbf5kDVcICAta0KrH3KVzE=; b=qTSjVlj4hSC3FW
	TqIOyVq5ARFWX40D8rRSxTYb4DAbs7Ls/Wr8NiLH8oqrmcfoxZZuPsq8r+TBUqJNUKd2MLCrmm43r
	UnsjfRCPH1it2A0IzdG5nFYqJRY5RfTz2kOdQHrCdS7xuqWyOLjhoivQg2LqDi27WfH+kJ4zkTnJa
	mNutw4tfEJnY1DKT06XWxeX5qSNbNtXekcD1+D2fbX5lldmWurghPqkvDrJh+hLsNGZRU02Q58aXl
	3y9CUiSDYViF3oKZjen7/gtyQkqEAPDSR5kAkrfDcqdF2AeOYxx9fwkiudLMRrItGXd1dhiNPE/r8
	NlCCiHCnXCTAHotzxKuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhUey-0003cq-BQ; Sat, 06 Jun 2020 08:58:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhUep-0003cS-UT
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 08:58:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id o8so6309247pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 06 Jun 2020 01:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4GQMb8Nb0ppLYW2rE9M0rp7cTPLVnp9iUypsRvJ/Hds=;
 b=jpBr/WGQjriKnX/rNrN6/3ksuCr+B8P+zJ0oF9HUMIXPffbDYMNQdsZtXr22IiOw6l
 BDPBCxWaqCLsmO/Ptb2Ppxaq82RlJtRgRo18hZ7X1BwS5tLIqEawAgWlBd6g9oqnmUDK
 pgMa8jrufS/icSCEgbYxL822M/ddWT/GoS3Ld4gNqvYwrXsFOzn7+u8z3mvPOGod3Vjn
 JDwS+Wroeqe5EGfh2MR3IL08rw4hxkKOhSQzt0CSEk/6Bhj/nP0M4Qs+8dk0mB4D1qVO
 2aluF+6k1yh2w/ch3MjcqckA69X3b7CHTFSn6rHT022OkctiaB2kVAzUHQuPD0HF88GG
 A4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4GQMb8Nb0ppLYW2rE9M0rp7cTPLVnp9iUypsRvJ/Hds=;
 b=oO3IiV5eBAkJXJjEIRjy8O+LkXjSWWna+8jdNmXNniQQzZvhuFAah0B/sLbwdU7eKP
 SVGIkDX605I8CVg/942uBAlBIVyQ173L6EtnZc8nJmNHtlIXZUJU/CsObpWgasG0qx5+
 FkOL9fwrSPBwgOb0UpbFCSlRqZ5L50rH3iyR75dxPCPG6x5tk4RlEMpvSr/1hWiwzwoQ
 9VHh3M/uu/49Fh4tcpo8rUFsd1gaeG/Tj0b3OVlLfNKy7RlJYVigDwOZOlY1plQkpmfj
 oPigE30YtQhurHq4nFazexZDUok00L6ma3TCqklgOan5ODml9eASe1OxPinY041O9rZg
 uxEQ==
X-Gm-Message-State: AOAM533hLpPKKyZsAflYCKjaRdQydhxtmIDm8jGXtCDtyZhoXpnoa7ik
 1hhXxaAQZc7aur09+2XLTSY=
X-Google-Smtp-Source: ABdhPJxIYXXnZ1MIaB4lBImX1CnGc3obC46IUhjsWTw/Sl04M2Cn7Ymq+/QSFK/KWCSm6vqkF7cWog==
X-Received: by 2002:a63:741c:: with SMTP id p28mr12856359pgc.33.1591433904823; 
 Sat, 06 Jun 2020 01:58:24 -0700 (PDT)
Received: from gmail.com ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id 136sm1796354pfa.152.2020.06.06.01.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 01:58:23 -0700 (PDT)
Date: Sat, 6 Jun 2020 01:58:22 -0700
From: Andrei Vagin <avagin@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH RESEND v3 0/6] arm64: add the time namespace support
Message-ID: <20200606085822.GA8351@gmail.com>
References: <20200602180259.76361-1-avagin@gmail.com>
 <20200605104904.GE85498@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605104904.GE85498@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_015828_007959_37F2486B 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 11:49:04AM +0100, Mark Rutland wrote:
> Hi Andrei,
> 
> As a heads up, in mainline the arm64 vdso code has been refactored since
> v5.7, and this series will need to be rebased atop. Given we're in the
> middle of the merge window, I would suggest waiting until rc1 before
> posting a rebased series.


Ok. I will resend this series after rc1. Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
