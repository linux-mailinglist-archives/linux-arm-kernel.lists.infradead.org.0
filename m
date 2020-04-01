Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62CF19A5A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 08:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDclr8AWYX2fO2kppssxDbS1B6F+58SYE//A6By1vZ4=; b=cl3EDCMhqlJ8gC
	0ZLCvosL2v8X8wc002M4C/HSQFlFVb2oSv9L1tl2sS+3aqB6o7TJMOjia9wXsalh76EhfPoQ+y2ZE
	yXphFf9S+jLTiDbUOSxpp3FpVryj5maF0J05mLCxAozGufXjHntvsNyoQWEUJZnyOU4odfx7I6Wid
	rRwBkHm/Ro9odu0bxlFKXHy7vm/VM42TE/YC/V+kB6vHlOXk95Lk297HbOsjLiMnkogRREBAS1rrV
	ADpirygi9MoowhmW0r0De/fxnsUBB/zkOnDyW/QsZF1xIyeENSpEEIV53QuP6V/G0GyjDNrwNSjdP
	ee9Af23+kjInJsH6D4jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXCh-0004K7-7L; Wed, 01 Apr 2020 06:50:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXCV-000479-HX
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 06:50:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id g32so5615655pgb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 23:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8wSuFvt8m/ubZdKRPF3ipeuvHEeQbwu0Gagfi6R4CDM=;
 b=UWA1KeKzvpkEB7y4nYsgfXDNSyIHXnMCZWhsXMVwfKjxjQG3AJ/PugziQjJldAs/I5
 W6maa6RpkTHLFl4D/+8Lty3Np/m/6rqKOBsulXpKxLtAR219t00NBDnebPXdbAlL5NM+
 YNYxAbKVHCKAz8Yc+thEtr9Ay2ekSCFQvHpW2P+lUMp9sXrXbdoKRlC5+o07nbMV+7h9
 x+GODXa4if+sQTGnivm9VRIo+7ZAs2km9yzkYzrS96DIrQV6f+H3klU1WAs9hxJvpHtC
 AAFLFY9R4Uet8NvyAB0TMIW8VCEzwM420KXc2smk0gN7h2C3hooajTMTfjDuCTQW5lQd
 HiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8wSuFvt8m/ubZdKRPF3ipeuvHEeQbwu0Gagfi6R4CDM=;
 b=uS0cJ00AdMJmmESDaC/APds2K1ZEwrsQhyDcdNxU7+hfMMENXkFYRw5/EfRrEvjlkR
 LEV4UhynUfBsod8YZCNXv/HDjp4+GJWWPKbsnPbP6s8xUJ9zHVDHol40SnLnPADFNgTo
 eIvrSxIEo87LB29xcEWy4/2hkn4MO4jN3Wz9TtYHHJA7UNSMBIrdkdZuN941kR4gh7A2
 1J1nz9zFyTfm2Fl2+rBhaXCoodRfESXlh0dEUI2g3vK00RYLpJZpAxA1iSb7O9fTb2Tv
 xgGhiV6LJwmuOWibjwHSfcij/VHhYPO9lA6afqrB+lho1w1wkSWAjqma0rqgNy66qoSg
 K1+A==
X-Gm-Message-State: ANhLgQ2pvkdptL60BNP2SQkeEf9KDtk1SJuD4AV7lau3N5wBAUKXmjfS
 jxr5mUv6PMMTWrKepZsH7Trz3PY3tPE=
X-Google-Smtp-Source: ADFU+vsYSHCKcYWLeSQimgdMc1jwH+iCRfbwon/W1SL0diideITSA/Zy2KD0bJVvq6EgA6N8Vn1+Cw==
X-Received: by 2002:aa7:9588:: with SMTP id z8mr20712539pfj.240.1585723809640; 
 Tue, 31 Mar 2020 23:50:09 -0700 (PDT)
Received: from gmail.com ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id e8sm816515pjt.26.2020.03.31.23.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 23:50:08 -0700 (PDT)
Date: Tue, 31 Mar 2020 23:50:05 -0700
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
Message-ID: <20200401065005.GA413115@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_235011_584362_6BC0E2A0 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

Have you had a chance to look at this series? Let me know if I need to
rebase this patch set and resend it again.

Thanks,
Andrei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
