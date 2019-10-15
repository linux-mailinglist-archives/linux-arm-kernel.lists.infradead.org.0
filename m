Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D8D7C5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jY9oTfU3oBXfq+FIbBmvOR+C7W3EuEFQwdHQmpi/9e0=; b=VVQCwNrwvhuBewf6PxZ1O7hYO
	yK4DY6y4IjwRt2uGl5+2AsmOCECPVZ0H42nakREP9tjthRHAazkeTwXda13/GjMoi156PiQ8b5cMm
	dMZOW25OYyCimkyEgrEed37JF5GdeR4h1U+VfKeUjZDkXtJkr/J7qdzY4Zc0Hdn+lP1ldEoZBropa
	0EGe/CzMH1R/FXPMszfCUjm9bXaTcrIIUcyh1Di7PJ/Hp63IWIW7X0n2b9ROaVBFY6ZoZKEw0NzuT
	u6Vn7wt8d7LlKgHy6GvIq8zEQbKqGRkBi7Pg8DOnpLlt0QN2Z7JoWAuRQm6xYkgeGAT/dlb+xxoum
	ZfP8Btp7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQ3k-0001oE-TG; Tue, 15 Oct 2019 16:52:32 +0000
Received: from vulcan.natalenko.name ([104.207.131.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQ3W-0001mY-CY; Tue, 15 Oct 2019 16:52:20 +0000
Received: from mail.natalenko.name (vulcan.natalenko.name
 [IPv6:fe80::5400:ff:fe0c:dfa0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 08E8B600D27;
 Tue, 15 Oct 2019 18:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1571158333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gP7dY/174GGdD6usTpaalR67cnmsiaPwYD5OpFcQfyY=;
 b=axlssqB+DUWqk4taqLCosVffDK8d64AuWwQ15V7uZqtx7iDctmvnRYOYKT+W9sQ0eHsN/C
 6jIbhyD9Sm2mIWuhiqx2sZThjUyh0zi3Yu4hB2KMVydbuj2Tr1PQqK7Q9NC5gMNnk2RdV6
 ZU1x93AcuTKJFTxW0B76PTLkE+3Rtj0=
MIME-Version: 1.0
Date: Tue, 15 Oct 2019 18:52:12 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: Re: mt76x2e hardware restart
In-Reply-To: <20191012165028.GA8739@lore-desk-wlan.lan>
References: <deaafa7a3e9ea2111ebb5106430849c6@natalenko.name>
 <c6d621759c190f7810d898765115f3b4@natalenko.name>
 <9d581001e2e6cece418329842b2b0959@natalenko.name>
 <20191012165028.GA8739@lore-desk-wlan.lan>
Message-ID: <f7695bc79d40bbc96744a639b1243027@natalenko.name>
X-Sender: oleksandr@natalenko.name
User-Agent: Roundcube Webmail/1.3.10
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name; 
 s=arc-20170712; t=1571158333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gP7dY/174GGdD6usTpaalR67cnmsiaPwYD5OpFcQfyY=;
 b=DRapKaMH9Ss4+Y57MDmNYSjvx33aSfwXUw8own30SGyjDa5AMl64qaMDNsqvPX7/s1RUlT
 /QkkeIHxPcKgKgp5SWsPB7WS+D/aWzg/vXK6aNsqs0cbcnq0AIxk4q1eaPz/BTo77lmKqr
 7yVWwSxfpPnFqoATcwt0citzVM5lIws=
ARC-Seal: i=1; s=arc-20170712; d=natalenko.name; t=1571158333; a=rsa-sha256;
 cv=none;
 b=PesOlooj33cKhM+/mIkE91p8YnsF/RM+XyufMQ7N+HwXFSwngv2bnoT5IKQRxPvK2kLS4e
 7/Ja/w9ZpmQ8oiIZboZ0nmfG8W7ad/eC012N804Ng5944lJbgzAaNEkQWMq1YRUDsdWJZ9
 ez1OhgcRkIU+TO6ThLjdLvcKF9Rbz7k=
ARC-Authentication-Results: i=1; vulcan.natalenko.name;
 auth=pass smtp.auth=oleksandr@natalenko.name
 smtp.mailfrom=oleksandr@natalenko.name
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_095218_747236_B48B6450 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.207.131.136 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey.

On 12.10.2019 18:50, Lorenzo Bianconi wrote:
> sorry for the delay. Felix and me worked on this issue today. Could you 
> please
> try if the following patch fixes your issue?

Thanks for the answer and the IRC discussion. As agreed I've applied [1] 
and [2], and have just swapped the card to try it again. So far, it 
works fine in 5 GHz band in 802.11ac mode as an AP.

I'll give it more load with my phone over evening, and we can discuss 
what to do next (if needed) tomorrow again. Or feel free to drop me an 
email today.

Thanks for your efforts.

[1] 
https://github.com/LorenzoBianconi/wireless-drivers-next/commit/cf3436c42a297967235a9c9778620c585100529e.patch
[2] 
https://github.com/LorenzoBianconi/wireless-drivers-next/commit/aad256eb62620f9646d39c1aa69234f50c89eed8.patch

-- 
   Oleksandr Natalenko (post-factum)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
