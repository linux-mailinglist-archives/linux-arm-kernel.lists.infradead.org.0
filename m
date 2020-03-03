Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F921785A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+nrMd+SV8wi6kZYENrsQ/MCbEmm9n78zQ6oNS3VLio=; b=MVV1YsC7s9EGWy
	Siao7MKgOrOy6QX6JxxpVi5UnvjsMNOsRLPsQBSXNpSjb61PonU7Zw1lcF1XXSsO1JukKmVyX5MiL
	INmUqgj0alhUkpF4CydvLvJobbWhsDsJFRLoDuEFAqMkH1Nhi2I3WuUrmrYPKrYd0QZU+s0L+sJql
	5uParbiuzEyI0A26QENLNoQ+MZfotXtv7ZFz43nPFq2FDMIt7K+W4zYPHXr26+Y5XXM2PSv5VIfcM
	MWJgrIb3BWEBXYWYw3ey7TSdvsFXk/O2ATfh5HC4Ec8X3bL5t8zY2WCC1Yj1SXHGO+hK6txqQaTZJ
	jRDWHYVy4IQPbnMJ3QnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9G1I-0000hP-4P; Tue, 03 Mar 2020 22:28:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9G1B-0000h3-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 22:28:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id x97so42353ota.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 14:28:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4CvqyOnwi+PkF9Fgr16wftCTc9EZXvOILmAuEvAl6u4=;
 b=hJys8JmQqA9E14bNbXOwpmBkadhWD22dyF0bFHoX8mdWcKQfvf/U4ngwtTw6hUhcmF
 85pI2FVf6okAitdpafyuMGgAnzr6vNl+DR4pCWhaSMfh3Sw+gHWSyuc9nsfBcculiN2B
 ZETwqPnnuzH0vuEvihitxyA9//xOeVdhKzmVIV6IYFl9rsbGqb94/0rIDIuRXgYOTx2t
 zwB25JpKJA03hLsQ9fg6j6GEArZHdquckhoOtQp7XvYKemh2x0ph/CMgb46N4rGfqcjM
 6TOl+r1/pKGE8eIuUe4HxgU2xHZmLHUlhy+mT3ZMECcGJOrX7iQt6slFUHLwsGPYnJeY
 4NrA==
X-Gm-Message-State: ANhLgQ3bbukR/+GUUY7qUtWZOxvk+ptKOfNxVSO1UoxB9v9Go5koYqnD
 KEK1j34TzJtvAj7ARGZLlXAlSoFtacbg9/2KzlM=
X-Google-Smtp-Source: ADFU+vsm8mIq56uAO4umHWhF6LNaWtfXccWDZb85aQiftvL3HYrQ23QOp0tfNIX9jse7T+Yb5W6IL5LTXXypLpgZBug=
X-Received: by 2002:a05:6830:110:: with SMTP id
 i16mr62733otp.189.1583274480489; 
 Tue, 03 Mar 2020 14:28:00 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
In-Reply-To: <20200303203559.23995-1-ulf.hansson@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 3 Mar 2020 23:27:49 +0100
Message-ID: <CAJZ5v0j86N5WgEJhCD6a7K2NG7NoK-wqG5h-vbc-Z7qH4fkySQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] cpuidle: psci: Some fixes when using the
 hierarchical layout
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_142801_602864_9E9E1B49 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 3, 2020 at 9:36 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Changes in v2:
>         - Small changes to patch 3 and 4, see their changelogs.
>
> While collaborating with Benjamin Gaignard to deploy the hierarchical layout
> for an ST SoC, it has turned that I have clearly missed to test a couple of
> corner cases in recently added support to the cpuidle-psci driver.
>
> This series are fixing the issues we have found.

I can apply the whole series, but I'd need an ACK from the PSCI driver
maintainers for that.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
