Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F3414FF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lyhTb4e/2LmdyB9gMHzpiQ4lYhS+v8g+Zo3YpezApc=; b=P1qS8db3DNVQYc
	RxC6hQv5phmobMVd18hDXFin3QpwO+Aj4YQu7jm7c+Hdbnd8cnRZ2Z4t17MCxwSPI1wmiF/VEQDsn
	8gXzJ+WNVHb0mHpe+5ruHCGi89ZX0WMqSk5B3JNc9YeafDS98jVLwmhugdd9wpT8XWJa8BZOUzGvn
	tH3Ocs3TQPR+Oqsw2eOhupIPoJtrxZHlWFpFSmzj+R0dQ/K9kTUo4QcVFqTPIgTs5BCf7zV29Uk3W
	Tiuxt9KXj7nBaVcCLvZkUmKcD9hbg2NIxZf2QgdokZSIuPwkuj0lvbnHC4q988tyZ1wfHjuZwnKCx
	DJGvYH6AhgfGACFCnbYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfQX-0004nv-BK; Mon, 06 May 2019 15:21:13 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfQN-0004mq-So; Mon, 06 May 2019 15:21:05 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x46FJUE9100526;
 Mon, 6 May 2019 15:20:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=EMVZPLqed0spBkywKOWEg6NbdmaW+XOPtfLd8HpUuQA=;
 b=o+//pkDQTwrEiN/m7EtTacjF2kEO4BVGJ863xaNH+7J97F7Q005ch5iCjuEBzkSVpTVs
 1o4SQYO/i591KoUMPrShWoengb/1w9HObMGuowgIZp9I2MWLRwFwaizoxaR7PnMpj2wc
 /30HeJBHaBZ6unYXinEL1fj03mHtUiJW5YAozN7NrV3x+6JO5oGc6eZBxzBjEG7SQ0lf
 eVAobDru/jZMNGlGeAyDs2bPRxY7maYxTkckQbC0FthV1n2VJoACoATVCydYFrlkrwGf
 QTR/SArMQxNOXRus8ZE0fVlekFK+rd3vu7o0ttzXZeR2Unc8d97ymTc1S4XjDvUBIhTJ UA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2s94bfq9xx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 May 2019 15:20:57 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x46FJpM2086866;
 Mon, 6 May 2019 15:20:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2sagytdvgm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 May 2019 15:20:56 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x46FKrgf007496;
 Mon, 6 May 2019 15:20:53 GMT
Received: from kadam (/196.110.137.40) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 May 2019 08:20:52 -0700
Date: Mon, 6 May 2019 18:20:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 2/3] staging: vchiq: revert "switch to
 wait_for_completion_killable"
Message-ID: <20190506152039.GT2239@kadam>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <20190506144030.29056-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506144030.29056-3-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905060131
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905060131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_082104_058931_37D03805 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 04:40:29PM +0200, Nicolas Saenz Julienne wrote:
> @@ -1740,7 +1740,8 @@ parse_rx_slots(struct vchiq_state *state)
>  					&service->bulk_rx : &service->bulk_tx;
>  
>  				DEBUG_TRACE(PARSE_LINE);
> -				if (mutex_lock_killable(&service->bulk_mutex)) {
> +				if (mutex_lock_killable(
> +					&service->bulk_mutex) != 0) {

This series does't add != 0 consistently...  Personally, I would prefer
we just leave it out.  I use != 0 for two things.  1)  When I'm talking
about the number zero.

	if (len == 0) {

Or with strcmp():

	if (strcmp(a, b) == 0) { // a equals b
	if (strcmp(a, b) < 0) {  // a less than b.

But here zero means no errors, so I would just leave it out...

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
