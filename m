Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D169DF537A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 19:23:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTKT/oArHb8U9+2aXwt8Fj+X890nUyiBt9bajx9mm7c=; b=ggxrD0ki/8mnBy
	tL1JMO/GDSGxTinzvuwb0EHxFdmeFotANQ2HpSIo5i/8DgERzbehm6l8Kjj586aoF4A7erscq3hyk
	qE6hAY9lPeVWOKnIZbSf27DIH+ElaU7TuYmaLhLSGBovwFg43IgSRYsWNdmQNtKeb2N1d4p1gC+rE
	s8LljnvuUoJZF3RzgEOF70XD8gdC4VIx4xXUXFZlXg+Wt6ZeWIu5+F8CvsHLTsf6F1VBZ9Cg2urPg
	0TAxWrye74OkkL6TXcWQqoH31boiZx7ZOi/Q5hmFIXvi45HpjCIzJj70Bwlcm66t9/LSKv06gXx+t
	dJJsbFG5WlCJBPLR4Urg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8vG-0002gA-3f; Fri, 08 Nov 2019 18:23:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8v6-0002fp-K7
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 18:23:41 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so7241508ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 10:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NctoxL0sKADJ8D3d5NZMmxBvjm+9wl6P/jKG6Zh+qXI=;
 b=DmiZZWSVZYbTaCsc7cbFp1Yo5qjCvCHwSQ7JPdveH9rJeQUJIIlWgH0yp9lnFctUU0
 P1wWQp0zH1vnpM7absprfIQ1Ze2fzZ2kDnUQk9p7HHQBrmDZDz0Kg4f/qUVwK2aAGOYP
 QhglNh7mTIuWvrSTYh37HDYzv85JEpZ16KRja4zkekrANp1ID75Kxi1oLVE4dQaNIBLD
 UUmU/9qUmxFg+NOINjr3HhvoFCZsNnPoLRycynuxIjFbRgXsGKu9hzES6DetqY2TXLqG
 //kNz7VI6kJb8GGZBw6gUP2PzHxo9nuDZoD95JOxLDPujHfyY+khT1NqHVVM02QK9uRi
 bKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NctoxL0sKADJ8D3d5NZMmxBvjm+9wl6P/jKG6Zh+qXI=;
 b=INCw2Yzj0K2+msZGPnWAn4yMkFfdKkRTh/cB1jJux2t7CLN10YichQ7zxEKI6R/Ot/
 J5vuiilKR/sJFi0KYUMpHq0zwQH031wggEL4bNXez2RsrQdr8kMJrEp62atJFGi4Tv5y
 X6F59yA+r3U6FlGBCTv7ZyC/3lIvAmk2C19pAfuq5kU1RtChFaerMeAJiyR+YGl0RF1L
 1UPl3cwohMJERs/KAbtv12JWlGjKaac/tfFVVgAIiP71INvZfYR9vUgKDpMp/l9+RhKP
 RY4LnbTGtAxXrkdvrD0NW/kojaYCc/7lLv+4mQvsxboQw4kHrP50dESKAUS8wCeFegnJ
 rzJA==
X-Gm-Message-State: APjAAAVPInz0JvTrERIWIIHwpKw7XXRsyeO/+HVU7TeoSW8e/14MSgZU
 CmrnmRrFxWzIKXa80yIJ5MfO3w==
X-Google-Smtp-Source: APXvYqzFbpBuqcopr6XuY3j1VaomoIUpvWtJezNT8VeCbwWC8Vsao9XO6ML082LSQZgFpPJFLLnHgg==
X-Received: by 2002:a2e:9d8d:: with SMTP id c13mr1478081ljj.71.1573237418282; 
 Fri, 08 Nov 2019 10:23:38 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k10sm3111996lfo.76.2019.11.08.10.23.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 08 Nov 2019 10:23:36 -0800 (PST)
Date: Fri, 8 Nov 2019 10:23:25 -0800
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL 1/2] SoCFPGA DTS updates for v5.5
Message-ID: <20191108182325.dmfntwvgztl4tj4q@localhost>
References: <20191029143737.24850-1-dinguyen@kernel.org>
 <d056d96f-5cfd-87ed-604f-7fab52055daa@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d056d96f-5cfd-87ed-604f-7fab52055daa@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_102340_684029_8D4B74A8 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 10:51:28AM -0600, Dinh Nguyen wrote:
> Gentle ping, in case you missed this.
> 
> Thanks,
> Dinh

They have been merged, it seems that the bot missed sending notifications.


-Olof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
