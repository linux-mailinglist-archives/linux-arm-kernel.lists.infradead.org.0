Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829961E629D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sbowun9UxkRpHbOCMWrqKy6gfuGvRuu+DVNitRTxHOk=; b=dwO3olSeEVX3k5Ar8ZWGZzZWZ
	h4PsPCSCk5viWtuweOHJ878haSY+yQw9j8oYS65SXnM67yMdYgC63l+QgO76F2UxQm7uGpkaqmuJ4
	/f3c9hVapz8u0ZmuvtvpPGZb3WM+fh+84w/mgY+Po4ZO0w670FA/NANoSYHgACMvFuhPmqOkTSr+l
	ZZFyZVWGFhy2hkI80PDkZYgIyang0WvuNf5z8ricT/uZqLBltv/Tc8/a5PwulF3c8YcI6sI59IsD7
	6YMEb42n9FcBMr0Xc0nz6lP1Syku17rIdc4adKZvYaeaA7Frxsc0mBYwwZsjLyIpHqsrZDO/9s1Z6
	aJ3NrnUTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIrB-0006WG-DV; Thu, 28 May 2020 13:46:01 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIr4-0006W6-Cy
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 May 2020 13:45:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Re4jEEmAvLF/IwOE4h8IS6wOLBf53DSbCjXiPd7qbRw=; b=xK0xOqA6/uDnmNjchVhIcx44Fn
 flODUgRineZsXF+EFoe7PhM33dhe7x4tRkj+7eEv6a8u1Dls1fONl0rRxNXXBq3Hbe2aTacBWOudK
 aIh3s0Kw6ALvOFy4aD8yLv2X7BKSFUdEQDEf7kAJEiZMoLu8pYCKuq60b1xzuYXFhTeedQka6h+pV
 xCYnhqC3z5q7FV+scWpNRMul05JEWR3lT3oc0MzcLVTvjeKx9+uGUHm6xpl+m8OaZ4v8yEzod9rb/
 GkBtHS3UB8eZyz5LmAAUOXcxE0xmQAfKIIqxkvCRIIxeZJmzhhWjZYmd5JyRFm97a1qz8X2lHCpc6
 IIdvbsnw==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIr2-0000W5-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590673506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Re4jEEmAvLF/IwOE4h8IS6wOLBf53DSbCjXiPd7qbRw=;
 b=eFEFLx+1a4HWFjnLGWV6Jyjg0ZiNvRc/kW1kLadciIr44Rz7oki/l1dWKuu05XLjmd0uW6
 hNAQTOVsjvOzvxnxs7juxQeckP4uxzSPWk7ua6MBjoeOTB/WKic/iZMFjUGBndJ8zAV0PV
 U0KIuO0pbcKFFAKAXAXQ69z1I2TfyJw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590673526;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Re4jEEmAvLF/IwOE4h8IS6wOLBf53DSbCjXiPd7qbRw=;
 b=BLdrmQk/VgFRqkA2ThW9tF/3ryGoUZaVLNEXRv7pfWhi1eLtgYCXjkt69dJYwdt83EFrIx
 pFpHBfh3kzWVRSg4G3cFFsW7BY5RK+PnBk7fqur63oaZPo4jKCQfC0MLXMQeVoHDOTRNjF
 ZOQQ1KbVuRd0EsCHqEXPfoF8HNeeC44=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590673551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Re4jEEmAvLF/IwOE4h8IS6wOLBf53DSbCjXiPd7qbRw=;
 b=UrLIdz/WV7JjVLNb9N188M7SaBi5FogRer3Xji2GCLeM102YrrBSr/i7TJoPwCgRLn8SxT
 NOtqjszq/Ie8NDPI3bLp3Y80g6c4G00MrNLtF0TZ384ttROTgusBWWq3hBMiszJEPtO8t5
 xW8rtXmJLM6e4eLWVAxzu34k3j+2gro=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-i0VHkOeVO46Jri8xBsBn8A-1; Thu, 28 May 2020 09:45:02 -0400
X-MC-Unique: i0VHkOeVO46Jri8xBsBn8A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39D4918FE860;
 Thu, 28 May 2020 13:45:01 +0000 (UTC)
Received: from llong.remote.csb (ovpn-118-217.rdu2.redhat.com [10.10.118.217])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 895637A1EF;
 Thu, 28 May 2020 13:45:00 +0000 (UTC)
Subject: Re: [PATCH v2 3/6] prctl.2: Add PR_SPEC_DISABLE_NOEXEC for
 SPECULATION_CTRL prctls
To: Dave Martin <Dave.Martin@arm.com>, Michael Kerrisk <mtk.manpages@gmail.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-4-git-send-email-Dave.Martin@arm.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <35acb48d-6703-bed5-8c6d-739411eea679@redhat.com>
Date: Thu, 28 May 2020 09:45:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1590614258-24728-4-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/27/20 5:17 PM, Dave Martin wrote:
> Add the PR_SPEC_DISABLE_NOEXEC mode added in Linux 5.1
> for the PR_SPEC_STORE_BYPASS "misfeature" of
> PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
>
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Cc: Waiman Long <longman@redhat.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> ---
>   man2/prctl.2 | 22 ++++++++++++++++++++--
>   1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index b6fb51c..cab9915 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1187,6 +1187,12 @@ The speculation feature is disabled, mitigation is enabled.
>   Same as
>   .B PR_SPEC_DISABLE
>   but cannot be undone.
> +.TP
> +.BR PR_SPEC_DISABLE_NOEXEC " (since Linux 5.1)"
> +Same as
> +.BR PR_SPEC_DISABLE ,
> +but but the state will be cleared on
> +.BR execve (2).
>   .RE
>   .IP
>   If all bits are 0,
> @@ -1251,6 +1257,17 @@ with the same value for
>   .I arg2
>   will fail with the error
>   .BR EPERM .
> +.\" commit 71368af9027f18fe5d1c6f372cfdff7e4bde8b48
> +.TP
> +.BR PR_SPEC_DISABLE_NOEXEC " (since Linux 5.1)"
> +Same as
> +.BR PR_SPEC_DISABLE ,
> +but but the state will be cleared on
> +.BR execve (2).
> +Currently only supported for
> +.I arg2
> +equal to
> +.B PR_SPEC_STORE_BYPASS.
>   .RE
>   .IP
>   Any unsupported value in
> @@ -1899,11 +1916,12 @@ was
>   .BR PR_SET_SPECULATION_CTRL
>   and
>   .IR arg3
> -is neither
> +is not
>   .BR PR_SPEC_ENABLE ,
>   .BR PR_SPEC_DISABLE ,
> +.BR PR_SPEC_FORCE_DISABLE ,
>   nor
> -.BR PR_SPEC_FORCE_DISABLE .
> +.BR PR_SPEC_DISABLE_NOEXEC .
>   .SH VERSIONS
>   The
>   .BR prctl ()

Acked-by: Waiman Long <longman@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
