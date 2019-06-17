Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ACB48176
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsRi6G4NPQrG4CVhz1K8YNSpmGOTj5taxLa3kf//7d4=; b=eoP0ixGBCYB0Nf
	kuNIIUlT6yyti7MqVLkZbLYwnhd/x+D6BfPHHaY1R2jCUOWc3JH4JeNrBbe3tH1xlnr18tuEzzXkG
	duSSrd4ZrgFb0ncdezBunOoBUmiPaoThDUXHSCsynNfljjaR/mnSlnPZM2APPGAN9X9z/CfV3MQF0
	CdAVVBeVAcM8PFQjbfgjbEuRRwwBZoxFtoZwIiLAgz/N/keUQuI9pNDYDZXJBRCpdm5z+JnHAluAQ
	V80U5DTVTA8hIXPTSjxgXvkqpdew3CRkKnWUIUuP6+p0NXX+pvhCpmVklw5NzyplND+v3/oQ6R1XM
	bJtKKGm1K0U5S5DzmkBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqLF-0003ja-3V; Mon, 17 Jun 2019 12:02:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJk-0002rv-Mq
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:00:57 +0000
Received: by mail-lf1-x144.google.com with SMTP id y13so6274056lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nuHL+41FQS1FGdnrGg3m5f+Q4OAf+9IU3CYtF3xi4cM=;
 b=btf2MS9zzodEQNzC2o6W40bP+aP+wNyyBOuW+eV4M18m3B1R7WOCJ9+2HKCk0dBDWp
 kXq+d9MkKHFwjzk8bU7aV38mFxlHYP8J6kqJnje5f36OjWVDcvaQZTmc0j0VhVHl8O+P
 AlOwebvIsxmSkyz1aTJmITWvVRAwjr+mJzZudQ3nvB8zr6E+iY9Zt+ValqPXmY/zEUN5
 Zc2pTqDBDCP3wSzOZgyNRNkO0/dKshhlQ9FO9224uQHnoc14Gwk6bZTaRO9eh46KnrmH
 /Brw4geN2TzIQLx2Jn/JlTWh+Bc8Vgf6GZgkW+6eISKli+qzmeTg7AEU+5sovYYdVgFP
 nzdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nuHL+41FQS1FGdnrGg3m5f+Q4OAf+9IU3CYtF3xi4cM=;
 b=lMZhInRwoWAjY0G+T+4O3BemCpS3hBlf1kwtaagBWt+NqrEEPK2B5OeNzHyyLkiRzE
 wRNarNXE/ThDTcpnOsERbrFWP31T9YM3GgMAtvGD1ci9pF7vgihnsBA3696wcIQ6z56R
 CtDw6LH5SJKXXvYjSOOtBzmuhIkharCV8pRFIba+bPHzlsAocWKgrBDiEzC7LooKIjvb
 z7I/c7IMW66/Y8itwlcYmaGnAk9wuLitu3D/EdAPgNl30BCq4Unf8/hsyohO+SOFr2wI
 pd7O8k5eLLuMNSgqerI7O2z8S4md/fiXAuTmWzD+YT0ckzhhyUjngufMeT18Tk4pT7W7
 PUKg==
X-Gm-Message-State: APjAAAUFAjUw1IYfVAiLrtSOHFbbmj0LVKkq4gl2PrG0BqG5ixAn65vV
 QO6YShPRN7lNTvo/LBp8LRhKUw==
X-Google-Smtp-Source: APXvYqy/Enc9M7M5r06W8M9vDa0bd072QCPPaK4qBMVgbXL4NEGbdrb0U7ZH67jyxqYfo9C6NfGPUw==
X-Received: by 2002:a19:5e4e:: with SMTP id z14mr37766859lfi.11.1560772854827; 
 Mon, 17 Jun 2019 05:00:54 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t21sm1724563lfd.85.2019.06.17.05.00.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:53 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:51:17 -0700
From: Olof Johansson <olof@lixom.net>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v2] firmware/psci: psci_checker: Park kthreads before
 stopping them
Message-ID: <20190617115117.c7tkjui3lliw4qqg@localhost>
References: <20190610173829.4741-1-jean-philippe.brucker@arm.com>
 <20190611104823.GA32504@redmoon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611104823.GA32504@redmoon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050056_754349_39F740AB 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, arnd@arndb.de,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, arm@kernel.org,
 sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 11:48:23AM +0100, Lorenzo Pieralisi wrote:
> Hi Arnd, Olof,
> 
> Can you pick this up please (with my ACK below) or you prefer me
> resending it ?

Resending is always slightly less work for us to collect acks, but I've applied
it at our end now.


Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
