Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2C7C28EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 23:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cCEBu1AYo63Ha7953+rSJrfxBipr0J4E1Aomwtsw/Y=; b=LUvOwQ78U70onF
	5ZEjj1oAyx+MYZ3QZJTOvm7nkggw8OKvOJC8hjE2GCgIvj8/J4eB1QD7Z7clCHTsFa++Izs7sfI/G
	O036FIWRGBGHCfAiAOoAjA+ZXSVx+WUMAG+IpCK8W9gNU4f/RYhKrzKwtIgshzV2GvrdxFVln4jZC
	4ztz5PwA5nhepKu/sfdT3D2WOEFqLY7O+1L6QxHP5AvyZi6UYqUxO6nQLb0Klej8xPZUe9DvveJbf
	H3+OUHfe+4U/L6Zp7M2nIrSYJM0ecOUnhRfPmgZcMeY+f6VimIZYhE1BENhCwKucAZTi47CBw1woJ
	IrUk8ILexYFY2xswrGqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF3ND-0007Tz-T4; Mon, 30 Sep 2019 21:38:27 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF3Mq-0007LG-6X
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 21:38:06 +0000
Received: by mail-lj1-x232.google.com with SMTP id b20so11086412ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 14:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ixtEphxdbSY2nxhdSSuwlJ43CSGi6j7e5g55W0WR5ps=;
 b=XDHWgPO2tzxfiQyNRdnzo5hR74XX4mhCRJG+pVQURE69/fv86sRHLqbR3Xh3C1gd/u
 UU/z4/3Mjsdm3CYGi8S26KjwIQ0tmQDWgZwJVlNpomeMgLYjCG4+ZgeFj1YgtZhqyL/U
 HUKEOCcp3//Tp068MpezftV8CG+hOBPc8g8Jw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ixtEphxdbSY2nxhdSSuwlJ43CSGi6j7e5g55W0WR5ps=;
 b=IOFAsdzDt7Ha9+UrsQO2Dh2WKQcm+/oXLCoySvohsAHTtC6s5ov2n2Pn79MGa2geD4
 BSF7aZRwCjcAjxKiNbn73S8vrVuslzlYPN76bxrpm86Vqv9ommlQEr64SVfs2L6wnwmE
 Ct9C4D0Y3UNz7/j0KeFxgvSZDEXSsCjzJ5+yXMnvHnPWUi4Wt6jBf8nR7+ab3vpkKhdp
 IkX+HU3OQucUO93SzeSEeR9JpA1zgK4M5yfpe4q6ej9+SIIfdOnpi01hgu3RgptiYPGs
 8FW2F6PIBk30Ch0NyUmZR+kkIny2AiSOFa9Wc2QmgKK6+RFHTys5BKqwjJrEyE6Dc6Xz
 jNNA==
X-Gm-Message-State: APjAAAWDfVEP1bBZsgT7DA3dFs13/xD9/4RkKzkpdavi2SHuIIe5iG1y
 +z0GIMdlcad+Csd1HHQG4k2tM53nET8=
X-Google-Smtp-Source: APXvYqy+t50/eQPSz9WDhYk8eN+wlN1aN0NeY1S1WUpLZF2EfzD+of7PX1vnPbd3shynBa1y6F4TpQ==
X-Received: by 2002:a2e:5dc3:: with SMTP id v64mr14128842lje.118.1569879481822; 
 Mon, 30 Sep 2019 14:38:01 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id e10sm3561329ljg.38.2019.09.30.14.38.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 14:38:01 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id q11so8181469lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 14:38:00 -0700 (PDT)
X-Received: by 2002:ac2:47f8:: with SMTP id b24mr12877392lfp.134.1569879480494; 
 Mon, 30 Sep 2019 14:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <MN2PR20MB2973A696B92A8C5A74A738F1CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
 <3e5347a2-9aa7-bffb-2343-42eda87a6c83@free.fr>
In-Reply-To: <3e5347a2-9aa7-bffb-2343-42eda87a6c83@free.fr>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 30 Sep 2019 14:37:44 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj=377rsWmvrK_MvL6yamTisj5SWFQZsQH+rjeic8_suA@mail.gmail.com>
Message-ID: <CAHk-=wj=377rsWmvrK_MvL6yamTisj5SWFQZsQH+rjeic8_suA@mail.gmail.com>
Subject: Re: France didn't want GSM encryption
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_143804_327247_E8D16817 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 4:14 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> Two statements above have raised at least one of my eyebrows.
>
> 1) France has laws that require backdoors.

No. But France has a long history on being bad on encryption policies.
They've gotten better, thankfully.

France was one of the countries that had laws against strong
encryption back in the 90s. It got better in the early 2000s, but
there's a long history - and still a push - for some very questionable
practices.

It was just a couple of years ago that the had discussions about
mandatory backdoors for encryption in France. Look it up.

Are there other countries that have worse track records? Yes. And in
the west, the US (and Australia) have had similar issues.

But when it comes to Western Europe, France has been a particular
problem spot. And I wanted to point out that it's not always the
obvious problem countries (ie Middle East, China) that everybody
points to.

> 2) France did not want GSM encryption.

I'm pretty sure that France had the encryption bit off at least during the 90's.

GSM A5/1 isn't great, but as part of the spec there is also A5/0. No,
it's not used in the West any more.

France was also at least at one time considered a hotbed of industrial
espionage by other European countries. And the US.

You can try to google for it, but you won't find all that much from
the bad old days. You can find _some_ stuff still..

  https://apnews.com/4206823c63d58fd956f26fd5efc9a777

but basically French intelligence agencies have been accused of
extensive industrial espionage for French companies over the years.

Anyway, I'm not trying to point to France as some kind of "worst of
the worst". I literally picked it as an example because people
generally _don't_ think of Western European countries as having
encryption issues, and don't generally associate them with industrial
espionage. But there really is a history even there.

            Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
