Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8A61400FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 01:32:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0dX59/CKLRzKS2jo6E+v3cWOfg8hpMKrVKqt9U7ajw=; b=ItB7w3pbx07plA
	35l8Legu0ZpkVonQ+vyV6djiPclApppVf6Z6aVcQ4ZNnIIUGWlvFWIevVBFGPQlVfiHdXHgQgwk8w
	jMLUbYPfq9Q3v5WQSzfHWr2AhpD3nOhr+wu9DzbyzCEThIx6MxD4erq6gBsIqce8HfMqtG7WDlJPo
	mGRkGJUexuAlcf/UOi0b9dw97/VWvFD/3kawD2FDfuTk91ABfPckY2U0gJMVU9c+lyBPF6FuN81oR
	vU6QXg8wG+JRH5SEcpV1oJGC1AgbMJCrfPLIUF7MsEQ6k3TWp0GrcwDTQPhVEWqOpfmlS+EkKleV2
	dhSdZEucDlREJvxz/5qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isFYq-0008IY-Hi; Fri, 17 Jan 2020 00:32:28 +0000
Received: from mail.prewas.sk ([212.5.209.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isFYj-0008Hg-3k; Fri, 17 Jan 2020 00:32:22 +0000
dkim-signature: v=1; a=rsa-sha256; d=3ksolutions.sk; s=mail.prewas.sk;
 c=relaxed/relaxed; q=dns/txt;
 h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
 bh=/ufg4YOpQeSX7cHfO6yjVhqqe1zoV2RAyfuHFpGADIk=;
 b=TkBU61dQOLsmC1C6opABH7EfcFHApUscqlJRZ39KvqiJMLdBy9gZAcE1Jim9nPqJMBop8CDciT17nbvKUTjAaPGQVBkeOAcNkSm2lF5k7G9hD+S96I29nZtl+3XbufAcC2vuyJQAxQvUkqZOYv4ApGF9pySPSF6LJ94NhTgQs3uGkjAjuQ5qt9+dyyWBGsO8ehklAECOExbDLkIy7E3NuzSGzh93eZT8oP7mkDGdy/JuhapHCOVtnG6+N1
 /rt7Q4IOKZLWWek0HAN6zJdQPny+zwD9TRd4pedc4+q++gVvCOqeoZWij0TIOsocFbnihgdfGmaXp3YF/kfLKe6Ghb2w==
Received: from [10.0.1.61] (pcfilo.vital.sk [10.0.1.61])
 by mail.prewas.sk with ESMTPSA
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128)
 ; Fri, 17 Jan 2020 01:31:48 +0100
Subject: Re: [PATCH] tty: serial: amba-pl011: added RS485 support
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200106235203.27256-1-sistik@3ksolutions.sk>
 <20200107072748.GA1014453@kroah.com>
From: "Ivan Sistik - 3K Solutions, s. r. o." <sistik@3ksolutions.sk>
Message-ID: <f6deeb06-39b7-f140-c6bd-c977c5ad2b5a@3ksolutions.sk>
Date: Fri, 17 Jan 2020 01:31:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200107072748.GA1014453@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_163221_496029_1EAAD661 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.5.209.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7. 1. 2020 at 8:27 Greg Kroah-Hartman wrote:

>> +config SERIAL_AMBA_PL011_SOFT_RS485
>> +	bool "RS485 software direction switching for ARM AMBA PL011 serial"
>> +	depends on SERIAL_AMBA_PL011=y
> 
> Why "=y" here?  Shouldn't this just read:
> 	depends on SERIAL_AMBA_PL011?
> 
>> +	select SERIAL_CORE
> 
> Is this needed?  SERIAL_AMBA_PL011 already selects this.

I am not sure. I found this few lines above:

> config SERIAL_AMBA_PL010_CONSOLE
> 	bool "Support for console on AMBA serial port"
> 	depends on SERIAL_AMBA_PL010=y
> 	select SERIAL_CORE_CONSOLE

and modified it for my purpose.


Thanks,

Ivan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
