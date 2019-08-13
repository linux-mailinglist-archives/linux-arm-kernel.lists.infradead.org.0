Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CC08BF63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnrwyyv8Gv66WN4uxIHSTaGzRjTYv5ik6p5wALBoO6U=; b=arzr2ZRWkmTMAD
	vcUyykrny8vvQe9fMP4NiYb4pAm1x7t9kvIxqsx448uytEVTBszTG0GP9VJcEzBFeeNCuUv7kdszB
	gxpXqqUtYNubhMe8uHZ7i1j2yBWsmHG74iySgl47YBlr96PVnuzqOYy03r+G8Rl41iDvGjoy078K4
	kXuPPB3vQy2ghPt5C5fFWzqoHCFmTzO/dN1yca8AFxDCf/Sxo/wtM1gJeJx8Fai0J1qKMPA2eeZdt
	i9nbFHF804VjUqIgzrFW32khw1SMwOyORRnQtvlze4bUBRT2rsN9//u9/L6jiXUjzsE3BKamxDKjP
	nsuRyHwtzd+eklE2L6MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaIh-0005ot-H9; Tue, 13 Aug 2019 17:09:35 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaIS-0005o9-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:09:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so7273357ljl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 10:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GVzAnVzEMjxkSBqu8V9mlBdGqDjrrYQzVhEjxzd+3hI=;
 b=I4qWR+mzqRT7c1SEkHGhKmL6s1EYBMsgtyPriDKNziH+B4FMxlEGuvrJH5HcS4lcUd
 oEuShorJ4j1kTmfzSPRIGn/stYQAr97GOiXpjAyAAXj4cxkN8Dy0uFFDrdXb/ecYQt9m
 1yniZalDerzD5yTNTTGHitP5LFfOrIUdgwpGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GVzAnVzEMjxkSBqu8V9mlBdGqDjrrYQzVhEjxzd+3hI=;
 b=O18YqwMdasmXmblqLmZ5gVO5EJplHnDGehAkHgnRb4m2ejdZJpZA/R9fkxIPCX+fD1
 u7h+EgUthNqlsvUxY3Zz0hkmpdM4hSBZhoah2/MEMOkLSAoOO4+0WHWK+XCCz7VaLfSi
 K+uJa1cPWR81qQgL606qSST5LWTZF9hsbb+LVPz8dwrrmgmANufqoeV8KRg+/JZTYuF/
 ontP5TABjmrLJT/Y3LPydCdyL/bQUUraM4bNnixqCyzgmAObRj3vCFNHPXXPYIllIEjp
 rYn7XZlNwKJK40zKrrZ+edRrdZcK89/XGuV4G3F3drlK5fUm+bE1WmtbRxxuwQSbaZ4b
 3+EQ==
X-Gm-Message-State: APjAAAUs3u2UzYypqdImMF9TjeQzlduuaTcpGpIvsiZjbv+8h8jSOB/A
 z9s6jjdCIn4DED98lunR0PtT1Y3gU+w=
X-Google-Smtp-Source: APXvYqy5ufXXfePSMEPEr469UhCX7g0r+CSms/QUAtvrOO4B8R2A+ODPfGG/BrjKMoxYCPF9VZjzUA==
X-Received: by 2002:a2e:b0cb:: with SMTP id g11mr5169840ljl.76.1565716158242; 
 Tue, 13 Aug 2019 10:09:18 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id b1sm21739180ljj.26.2019.08.13.10.09.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 10:09:17 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id b29so70028611lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 10:09:17 -0700 (PDT)
X-Received: by 2002:a19:641a:: with SMTP id y26mr22803433lfb.29.1565716156648; 
 Tue, 13 Aug 2019 10:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190813145341.28530-1-georgi.djakov@linaro.org>
 <20190813145341.28530-4-georgi.djakov@linaro.org>
In-Reply-To: <20190813145341.28530-4-georgi.djakov@linaro.org>
From: Evan Green <evgreen@chromium.org>
Date: Tue, 13 Aug 2019 10:08:40 -0700
X-Gmail-Original-Message-ID: <CAE=gft6ZpM6x21X+SxCbNDdNS5B51yYAFA0XBbViqLmr99n5SQ@mail.gmail.com>
Message-ID: <CAE=gft6ZpM6x21X+SxCbNDdNS5B51yYAFA0XBbViqLmr99n5SQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] interconnect: qcom: Add tagging and wake/sleep
 support for sdm845
To: Georgi Djakov <georgi.djakov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100920_770311_0C0736EF 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pm@vger.kernel.org, Sean Sweeney <seansw@qti.qualcomm.com>,
 LKML <linux-kernel@vger.kernel.org>, David Dai <daidavid1@codeaurora.org>,
 Doug Anderson <dianders@chromium.org>, amit.kucheria@linaro.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 7:53 AM Georgi Djakov <georgi.djakov@linaro.org> wrote:
>
> From: David Dai <daidavid1@codeaurora.org>
>
> Add support for wake and sleep commands by using a tag to indicate
> whether or not the aggregate and set requests fall into execution
> state specific bucket.
>
> Signed-off-by: David Dai <daidavid1@codeaurora.org>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>

Reviewed-by: Evan Green <evgreen@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
